Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $variant-state = http://terminology.hl7.org/CodeSystem/variant-state
Alias: $restful-security-service = http://terminology.hl7.org/CodeSystem/restful-security-service
Alias: $message-transport = http://terminology.hl7.org/CodeSystem/message-transport

Instance: ITBCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://portal.wof.purified.link/fhir/CapabilityStatement"
* version = "0.1"
* name = "ITB"
* title = "ITB capability statement"
* status = #draft
* experimental = true
* date = "2021-06-22"
* publisher = "Service Well"
* contact.name = "System Administrator"
* contact.telecom.system = #email
* contact.telecom.value = "kontakt@servicewell.se"
* description = "This is the FHIR capability statement for the ITB interface"
* useContext.code = $usage-context-type#focus
* useContext.valueCodeableConcept = $variant-state#positive
//* jurisdiction = 
* purpose = "ITB capability statement, published for contracting and operational support"
* copyright = "Copyright © Service Well AB"
* kind = #instance
* instantiates = "http://ihe.org/fhir/CapabilityStatement/pixm-client"
* software.name = "ITB"
* software.version = "0.0.0"
* software.releaseDate = "2021-09-01"
* implementation.description = "WOF"
* implementation.url = ""
* fhirVersion = #4.0.1
* format[0] = #json
* patchFormat[0] = #application/json-patch+json
* implementationGuide = "https://build.fhir.org/ig/barbrov/wof-portal-fhir-ig/"
* rest.mode = #server
* rest.documentation = "Main FHIR endpoint for ITB"
* rest.security.cors = true
* rest.security.service = $restful-security-service#SMART-on-FHIR
* rest.security.description = "See Smart on FHIR documentation"
* rest.resource.type = #ActivityDefinition
* rest.resource.profile = "http://registry.fhir.org/r4/StructureDefinition/7896271d-57f6-4231-89dc-dcc91eab2416"
* rest.resource.supportedProfile = "http://registry.fhir.org/r4/StructureDefinition/00ab9e7a-06c7-4f77-9234-4154ca1e3347"
* rest.resource.documentation = "This server does not let the clients create identities."
//* rest.resource.interaction[0].code = #read
//* rest.resource.interaction[+].code = #vread
//* rest.resource.interaction[=].documentation = "Only supported for patient records since 12-Dec 2012"
//* rest.resource.interaction[+].code = #update
//* rest.resource.interaction[+].code = #history-instance
//* rest.resource.interaction[+].code = #create
//* rest.resource.interaction[+].code = #history-type
* rest.resource.versioning = #versioned-update
* rest.resource.readHistory = true
* rest.resource.updateCreate = false
* rest.resource.conditionalCreate = true
* rest.resource.conditionalRead = #full-support
* rest.resource.conditionalUpdate = false
* rest.resource.conditionalDelete = #not-supported
* rest.resource.searchInclude = "Organization"
* rest.resource.searchRevInclude = "Person"
* rest.resource.searchParam[0].name = "identifier"
* rest.resource.searchParam.definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource.searchParam.type = #token
* rest.resource.searchParam.documentation = "Only supports search by institution MRN"
* rest.resource.searchParam.name = "general-practitioner"
//* rest.resource.searchParam .definition = "http://hl7.org/fhir/SearchParameter/Patient-general-practitioner"
* rest.resource.searchParam.type = #reference
* rest.interaction[0].code = #transaction
//* rest.interaction[+].code = #history-system
* rest.compartment = "http://hl7.org/fhir/CompartmentDefinition/patient"
* messaging.endpoint.protocol = $message-transport#mllp
* messaging.endpoint.address = "mllp:10.1.1.10:9234"
* messaging.reliableCache = 30
* messaging.documentation = "ADT A08 equivalent for external system notifications"
* messaging.supportedMessage.mode = #receiver
* messaging.supportedMessage.definition = "MessageDefinition/example"
* document.mode = #consumer
* document.documentation = "Basic rules for all documents in the EHR system"
* document.profile = "http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/_history/b5fdd9fc-b021-4ea1-911a-721a60663796"