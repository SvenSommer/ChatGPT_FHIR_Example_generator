Instance: 9a2c7241-44f3-422f-978d-769dcf1c63cc
InstanceOf: MedComCareCommunicationMessageHeader
Title: "New MessageHeader - Instance of a MessageHeader resource used in a reply message"
Description: "Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example

* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://example.org/receiver-endpoint"
* destination[primary].receiver = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "https://example.org/sender-endpoint"
* focus = Reference(54686c0b-b4ab-4f85-a5c3-8e1f1082c614)
