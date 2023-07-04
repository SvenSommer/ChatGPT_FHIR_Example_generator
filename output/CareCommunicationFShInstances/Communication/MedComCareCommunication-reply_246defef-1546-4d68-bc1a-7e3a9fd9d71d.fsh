Instance: 54686c0b-b4ab-4f85-a5c3-8e1f1082c614
InstanceOf: MedComCareCommunication
Title: "New CareCommunication - Instance of Communication resource used in a reply message"
Description: "Content of care communication message. Valid only if used in a bundle (message) - reply message"

* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(957c6e90-785d-4ef8-a62b-8d021de42c79)
* payload[0].contentString = "Thank you for your message, we will take appropriate action..."
* payload[0].extension[date].valueDateTime = 2023-07-04T16:45:00+02:00
* payload[0].extension[author].valueReference = Reference(8bf63050-5504-11ed-bdc3-0242ac120002)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "12345678"
* payload[1].contentString = "Regarding the follow-up appointment, please note that..."
* payload[1].extension[date].valueDateTime = 2023-07-04T15:30:00+02:00
* payload[1].extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "98765432"
