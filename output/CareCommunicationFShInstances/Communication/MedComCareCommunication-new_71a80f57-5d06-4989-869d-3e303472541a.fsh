Instance: 2918193d-3f2d-46b5-94b1-7b8575f0400f
InstanceOf: MedComCareCommunication
Title: "New CareCommunication - Instance of Communication resource used in a new message"
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message"

* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* topic.text = "Hello"
* subject = Reference(957c6e90-785d-4ef8-a62b-8d021de42c79)
* payload.contentString = "Regarding the follow-up appointment, please note that..."
* payload.extension[date].valueDateTime = 2023-07-04T15:30:00+02:00
* payload.extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "12345678"
