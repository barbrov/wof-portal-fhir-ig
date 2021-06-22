Profile: ITBEndpoint
Parent: Endpoint
Title: "ITB Endpoint"
Description: "ITB Endpoint is used to handle  .."

//* extension contains
//OpusCryptobookingText named OpusCryptobookingTextExtension 0..*

* id 1..1 MS
* id ^short = "Logical id of this artifact"

* address 1..1 MS
* address ^short = "" 

* status 1..1 MS
* status ^short = "active | suspended | error | off | entered-in-error | test"

* name 1..1 MS
* name ^short = "A name that this endpoint can be identified by"

* header 1..1 MS
* header ^short = ""

* connectionType 1..1 MS
* connectionType ^short = ""
//* connectionType.coding.system = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
//* connectionType.coding.display = "hl7-fhir-rest"

* payloadMimeType 1..1 MS
* payloadMimeType ^short = ""

* payloadType 1..* MS
* payloadType ^short = ""

// What are these? Extension?
//* identifierPrefix
//* dbContextId
//* sourceSystemUserid