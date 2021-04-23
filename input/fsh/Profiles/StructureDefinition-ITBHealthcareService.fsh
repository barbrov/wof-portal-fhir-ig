Profile: ITBHealthcareService
Parent: HealthcareService
Title: "ITB HealthcareService"
Description: "ITBHealthcareService..."


* id 0..1
* id ^short = "HealthCareService Id"

* identifier 0..*
* identifier ^short = "Möjlighet till externa identifierare."

* type 0..*
* type from ITBServiceTypes
// * type.coding.value
// * type.coding.system
* type ^definition = "The specific type of service that may be delivered or performed"
* type ^short = "Vilka typer av behandlingar erbjuds? Eventuell koppling till serviceType"

* location 0..*
* location only Reference(Location)
* location ^short = "The location(s) where this healthcare service may be provided. Här kan man använda sig av en s.k contained resource. Alltså en Locations-resurs som endast lever tillsammans med denna HealthcareService. Detta för att enkelt kunna få in information så som adress och liknande."
//* location.address.text 0..*
//* location.address.text ^short = "Gatuadress"
//* location.address.city 0..*
//* location.address.city ^short = "Stad"

// TODO Only address.text and address.citry?

* name 0..1
* name ^short = "Namn eller visningsnamn"

* comment  0..1
* comment ^short = "Möjlighet till ytterligare information som kan användas av ITB vid rendering."

* telecom 0..*
* telecom ^short = "List of contacts related to this specific healthcare service."
* telecom.system 0..1
* telecom.value 0..1

// TODO Only system phone and work? 

* endpoint 0..*
* endpoint ^short = "TBD"
// TODO what is endpoint.display


// Elements excluded

* modifierExtension 0..0
* extension 0..0
* implicitRules 0..0
* language 0..0
* meta 0..0
* text 0..0

* providedBy 0..0
* category 0..0
* specialty 0..0
* extraDetails 0..0
* photo 0..0
* coverageArea 0..0
* serviceProvisionCode 0..0
* eligibility 0..0
* program 0..0
* characteristic	0..0
* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0





