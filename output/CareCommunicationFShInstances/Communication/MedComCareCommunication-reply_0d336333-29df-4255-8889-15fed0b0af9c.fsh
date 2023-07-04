Instance: 4c712bdc-1558-4125-a854-fa8b3a11f6ed
InstanceOf: MedComCareCommunication
Title: "Instance of Communication resource used in a reply message."
Description: "Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* payload[0].contentString = "Thank you for notifying us, we will take care of it..."
* payload[0].extension[date].valueDateTime = 2023-03-02T11:30:00+01:00
* payload[0].extension[author].valueReference = Reference(8bf63050-5504-11ed-bdc3-0242ac120002)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "44527000"
* payload[1].contentString = "Regarding the rehabilitation plan, please notice that..."
* payload[1].extension[date].valueDateTime = 2023-03-