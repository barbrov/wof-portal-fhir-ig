Profile: ITBAppointmentResponse
Parent: AppointmentResponse
Title: "ITB AppointmentResponse"
Description: "ITBAppointmentResponse is used to handle  .."


* id 1..1 MS
* id ^short = "Logical id of this artifact"

* appointment 1..1 MS
* appointment ^short = ""
* appointment only Reference(Appointment)

* actor 1..1 MS
* actor ^short = ""

// Is this correct?
* actor only Reference(HealthcareService)
* actor.display 1..1 MS
* actor.display ^short = ""

* participantStatus 1..1 MS
* participantStatus ^short = "accepted | declined | tentative | needs-action"
