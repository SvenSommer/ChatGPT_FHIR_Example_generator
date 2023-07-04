# ChatGPT_FHIR_Example_generator
Test to generate Instances of StructureDefinitions using openAI Api

## generate_examples.py

This script is used to generate new instance examples in the FSH (SUSHI shorthand) language based on existing FSH files. It makes use of the OpenAI API to generate prompts.

## Prerequisites

Before running the script, make sure you have the following installed:

- Python 3.x
- OpenAI Python library

## Installation

1. Clone the repository:
```
git clone https://github.com/SvenSommer/ChatGPT_FHIR_Example_generator.git
```

2. Install the required dependencies by running the following command:
```
pip install -r requirements.txt
```


## Configuration

1. Create a `settings.py` file in the same directory as the script.

2. In the `settings.py` file, provide your OpenAI API key as follows:

```python
API_KEY = '<your-api-key>'
```

Usage
Run the script with the following command:
```
python3 generate_examples.py
```

The script expects two directories, an input directory containing the existing FSH files, and an output directory where the generated examples will be saved. You can modify the input and output directories in the script according to your needs:

```python
read_fsh_files('./input/CareCommunicationFShInstances', './output/CareCommunicationFShInstances', True)

```

## Manual Mode
By default, the script generates prompts automatically using the OpenAI API. However, you can activate manual mode by setting the manual_mode parameter to True. In manual mode, you will be prompted to provide a response for each generated prompt.

Please note that the script uses a maximum of two retries for API requests. If a request fails after the specified number of retries, an exception will be raised.

# License
This project is licensed under the MIT License.