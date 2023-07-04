
Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding.code = $Use#primary


// CareCommunication reply example
Instance: d5bd2111-2576-48d3-84d4-8be0297a038d
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply message."
Description: "Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(4c712bdc-1558-4125-a854-fa8b3a11f6ed)
