import openai
from openai.error import Timeout, APIError, APIConnectionError, InvalidRequestError, AuthenticationError, PermissionError, RateLimitError
from settings import API_KEY
import time
import os
import uuid
from pathlib import Path
import tempfile

openai.api_key = API_KEY

def get_user_input_tempfile():
    # create a temporary file in the specified directory
    with tempfile.NamedTemporaryFile(mode='w+', delete=False, dir='./tempfile') as tmp:
        print(f"\n\n---\n\nPlease paste your response into this file: {tmp.name}")
        print("Once you're done, save the file and press Enter in the console.")
        input()

        # read the content from the temp file
        tmp.seek(0)
        content = tmp.read()

    # remove the temporary file
    os.unlink(tmp.name)

    return content


def generate_prompt(prompt, max_retries=2, manual_mode=False):
    prompt=prompt + "\n\n---\n\nPlease invent a new instance example in the fsh (sushi shorthand) language for the previous example instance. Please alter also the instance identifier. Please provide just a code block as answer, so it can be copied and pasted. This prompt is embedded in a script, any other info than a code block would destroy the script."
    if not manual_mode:
        retry_count = 0
     
        print(prompt)
        while retry_count < max_retries:
            try:
                response = openai.Completion.create(
                engine="text-davinci-002",
                prompt=prompt,
                max_tokens=300,
                temperature=0.5,
                n=1,
                top_p=1.0,
                frequency_penalty=0.0,
                presence_penalty=0.0
                )
                return response.choices[0].text.strip()
            except Timeout as e:
                print(f"OpenAI API request timed out: {e}")
            except APIError as e:
                print(f"OpenAI API returned an API Error: {e}")
            except APIConnectionError as e:
                print(f"OpenAI API request failed to connect: {e}")
            except InvalidRequestError as e:
                print(f"OpenAI API request was invalid: {e}")
            except AuthenticationError as e:
                print(f"OpenAI API request was not authorized: {e}")
            except PermissionError as e:
                print(f"OpenAI API request was not permitted: {e}")
            except RateLimitError as e:
                print(f"OpenAI API request exceeded rate limit: {e}")

            time.sleep(5)
            retry_count += 1
        raise Exception(f"OpenAI API request failed after {max_retries} retries")
    else:
        print(f"Manual Mode Activated! Please provide a response for the following prompt:\n\n\n{prompt}")
        response = get_user_input_tempfile()
        return response



def read_fsh_files(input_path, output_path, manual_mode):
    for root, dirs, files in os.walk(input_path):
        for file in files:
            if file.endswith('.fsh'):
                with open(os.path.join(root, file), 'r') as f:
                    data = f.read()
                    prompt = data
                    result = generate_prompt(prompt, 2, manual_mode)
                    
                    # Create the same folder structure in the output directory
                    relative_path = os.path.relpath(root, input_path)
                    new_dir = os.path.join(output_path, relative_path)
                    Path(new_dir).mkdir(parents=True, exist_ok=True)

                    # Save the result with the same filename plus a uuid
                    new_file = os.path.join(new_dir, file.split(".")[0] + "_" + str(uuid.uuid4()) + ".fsh")
                    with open(new_file, 'w') as out_f:
                        out_f.write(result)

# Replace './input' and './output' with your directories
read_fsh_files('./input/CareCommunicationFShInstances', './output/CareCommunicationFShInstances', False)
