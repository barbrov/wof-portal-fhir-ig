Profile: ITBAppointment
Parent: Appointment
Title: "ITB Appointment"
Description: "ITBAppointment is used to handle  .."

* id ^short = "Logical id of this artifact"
* id ^definition = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."

* identifier 0..*
* identifier ^short = "Extern identifiering vid behov."

* status 1..1 MS
* status ^short = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
* status ^definition = "The overall status of the Appointment. Each of the participants has their own participation status which indicates their involvement in the process, however this status indicates the shared status. -> Vid första anrop vid bokning är denna exempelvis proposed."

* serviceType 1..*
* serviceType ^short = "Typ av behandling som skall bokas."

* slot 0..*
* slot ^short = "The slots that this appointment is filling"
* slot ^definition = "I ITBn mot OPUS hanterar vi inte denna referens då vi endast använder start och end för att beskriva tidsintervallet. Det kan dock vara aktuellt att använda slot-referensen vid hantering av t.ex. Pride osv."

* comment 0..1
* comment ^short = "Möjlighet att fylla på med relevant fritext vid bokning."

* participant 1..* MS
* participant ^definition = "Referens till PractitionerRole, kanske även HealthcareService"
* participant.status 1..1 MS
* participant.status ^short = "accepted | declined | tentative | needs-action"
* participant.status ^definition = "Participation status of the actor."


// Elements excluded

* modifierExtension 0..0
* extension 0..0
* cancelationReason 0..0
* serviceCategory 0..0
* specialty 0..0
* appointmentType 0..0
//* reasonCode 0..0
//* reasonReference 0..0
* priority 0..0
* description 0..0
* supportingInformation 0..0
* minutesDuration 0..0
* created 0..0
* patientInstruction 0..0
* basedOn 0..0
* requestedPeriod 0..0




