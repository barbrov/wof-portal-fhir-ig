Profile: ITBSlot
Parent: Slot
Title: "ITB Slot"
Description: ""


* identifier 0..*
* identifier ^short = "Extern identifiering vid behov."

* serviceType 0..*
* serviceType ^short = "Typ av behandling denna slot gäller för. Kan vara flera beroende på hur man vill göra."

* schedule 1..1 MS
* schedule ^short = "Pekar på vilket schema denna slot tillhör."

* status 1..1 MS
* status ^short = "busy | free | busy-unavailable | busy-tentative | entered-in-error"
* status ^definition = "Just nu använder vi endast \"free\". Men vill man exempelvis kunna rendera upp en tandläkares schema kan det vara intressant att använda andra koder. Exempelvis \"busy\"."

* start 1..1
* start ^short = "Date/Time that the slot is to begin."

* end 1..1
* end ^short = "Date/Time that the slot is to conclude."

// Elements excluded

* extension 0..0
* modifierExtension 0..0

* serviceCategory 0..0
* specialty 0..0
* appointmentType 0..0
* overbooked 0..0
* comment 0..0



