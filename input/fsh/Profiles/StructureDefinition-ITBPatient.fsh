Profile: ITBPatient
Parent: Patient
Title: "ITB Patient"
Description: ""

* identifier 0..*
* identifier ^short = "Extern identifierare. Svenskt personnumer men även andra identifierare"

* active 0..1
* active ^short = "Här finns möjligheter att signalera om en patient får boka eller inte."

* name 0..* 
* name ^short = "A name associated with the individual. Krävs mellannamn? Finns en extension för detta."

* generalPractitioner 0..*
* generalPractitioner ^short = "Referens till PractitionerRole känns rimligt om man vill använda denna. PractitionerRole innehåller mycket information och referenser till andra resurser."

* managingOrganization 0..1
* managingOrganization ^short = "Organization that is the custodian of the patient record. Ej viktig men kan bra i ett längre perspektiv."


// Elements excluded

* extension 0..0
* modifierExtension 0..0

* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* link 0..0

