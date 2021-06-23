Alias: $csServiceType = http://portal.wof.purified.link/fhir/CodeSystem/csServiceType

Instance: PostAppointmentWithoutPatient
InstanceOf: Appointment
Usage: #example
* status = #proposed
* serviceType = $csServiceType#{{serviceTypeCode}}
* start = "2021-05-14T06:30:00+00:00"
* end = "2021-05-14T07:00:00+00:00"
* participant[0].actor = Reference(HealthcareService/{{healthCareServiceID}})
* participant[0].status = #accepted
* participant[1].actor = Reference(Patient/649)
* participant[1].status = #accepted
* participant[2].actor = Reference(PractitionerRole/{{practitionerRoleId}})
* participant[2].status = #accepted