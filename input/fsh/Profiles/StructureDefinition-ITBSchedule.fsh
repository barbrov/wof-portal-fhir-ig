Profile: ITBSchedule
Parent: Schedule
Title: "ITB Schedule"
Description: ""


* identifier 0..*
* identifier ^short = "Extern identifiering vid behov."

* serviceType 0..*
* serviceType ^short = "Typ av behandling."

* actor 1..*
* actor ^short = "Referens till PractitionerRole samt HealthcareServiceId"

* planningHorizon 0..1
* planningHorizon ^short = "Tidsintervall. Detta kan sättas efter behov, just nu använder vi 5veckors scheman i ITB."

// Elements excluded

* extension 0..0
* modifierExtension 0..0

* active 0..0
* serviceCategory 0..0
* specialty 0..0
* comment 0..0


