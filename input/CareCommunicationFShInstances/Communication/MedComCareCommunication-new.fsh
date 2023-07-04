// CareCommunication new example
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: MedComCareCommunication
Title: "Instance of Communication resource used in a new message."
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* topic.text = "hej"
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* payload.contentString = "Regarding the rehabilitation plan, please notice that..."
* payload.extension[date].valueDateTime = 2023-03-01T12:00:00+01:00
* payload.extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"


