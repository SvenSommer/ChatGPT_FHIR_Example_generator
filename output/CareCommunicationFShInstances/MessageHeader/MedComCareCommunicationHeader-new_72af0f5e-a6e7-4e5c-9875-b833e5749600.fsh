Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://s