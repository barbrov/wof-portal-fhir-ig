Profile: ITBHealthcareService
Parent: HealthcareService
Title: "ITB HealthcareService"
Description: "ITBHealthcareService..."


* extension contains
ITBPriceDefinition named ExtPriceDefinition 0..*

* extension contains
ITBListReference named ExtListReference 0..1

* id 0..1 MS
* id ^short = "HealthCareService Id"

* contained 0..* MS
* contained only Location or List
* contained ^short = ""
//* contained.list.status 1..1 MS
//* contained.list.status ^short = "current | retired | entered-in-error"

//* contained.list.entry.item 1..1 MS
//* contained.list.entry.item Reference(ActivityDefinition)
//* contained.list.entry.item ^short = "current | retired | entered-in-error"

* name 0..1 MS
* name ^short = "Name or Display name"

* endpoint 0..* MS
* endpoint ^short = "TBD"
//* endpoint only Reference(Endpoint)
* endpoint.display ^short = ""¨

* active 0..1 MS
* active ^short = ""

// displayName - what is this. Different from name?

* location 0..* MS
* location only Reference(Location)
//* location ^short = "The location(s) where this healthcare service may be provided"
//* location.address 0..* MS
//* location.address.text ^short = "Street"
//* location.address.city 0..* MS
//* location.address.city ^short = "City"

* telecom 0..*
* telecom ^short = "List of contacts related to this specific healthcare service."
* telecom.system 0..1
* telecom.value 0..1 MS

// What is HealthCareServiceActivityDefinitionList?


