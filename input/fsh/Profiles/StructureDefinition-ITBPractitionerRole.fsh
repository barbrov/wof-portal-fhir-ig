Profile: ITBPractitionerRole
Parent: PractitionerRole
Title: "ITB PractitionerRole"
Description: ""


// What about Id?

* extension contains
ITBBinaryReference named BinaryReferenceExtension 0..*

* identifier 0..*
* identifier ^short = "Extern identifiering."

* active 1..1 MS
* active ^definition = "Indicates if this role is active and bookable at the HealthcareService"

* period 0..1
* period ^short = "Period under viken behandlare kan iträda roll"
* period.start ^short  = "Starttid"
* period.end ^short = "Sluttid"

* practitioner 1..1 MS
* practitioner ^short = "Connects to EHRs that containes the practitioner where the appointment will be stored   --> example: DB01/fhir/Practitioner/123"

* organization 1..1 MS
* organization ^short = "Connects to EHRs soureSystem organization --> example:  DB01/fhir/Organization/123"

* code 0..*
* code ^short = "Role that can be beformed - connected to ActivityDefinition.participant.role"
* code from ITBRoleCodes

* specialty 0..*
* specialty ^definition = ""
* specialty from ITBSpecialityCodes (preferred)


* healthcareService 0..*
* healthcareService ^short = "The HealthcareService where this role i bookable"

* endpoint 0..*



// Elements excluded
* modifierExtension 0..0
* implicitRules 0..0
* language 0..0
* meta 0..0
* text 0..0
* location 0..0
* telecom 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0



