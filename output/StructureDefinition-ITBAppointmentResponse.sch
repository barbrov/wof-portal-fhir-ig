<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AppointmentResponse
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:AppointmentResponse</sch:title>
    <sch:rule context="f:AppointmentResponse">
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:actor) &gt;= 1">actor: minimum cardinality of 'actor' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse</sch:title>
    <sch:rule context="f:AppointmentResponse">
      <sch:assert test="(exists(f:participantType) or exists(f:actor))">Either the participantType or actor must be specified (inherited)</sch:assert>
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.meta</sch:title>
    <sch:rule context="f:AppointmentResponse/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.implicitRules</sch:title>
    <sch:rule context="f:AppointmentResponse/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.language</sch:title>
    <sch:rule context="f:AppointmentResponse/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.text</sch:title>
    <sch:rule context="f:AppointmentResponse/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.extension</sch:title>
    <sch:rule context="f:AppointmentResponse/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.modifierExtension</sch:title>
    <sch:rule context="f:AppointmentResponse/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.identifier</sch:title>
    <sch:rule context="f:AppointmentResponse/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.appointment</sch:title>
    <sch:rule context="f:AppointmentResponse/f:appointment">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.start</sch:title>
    <sch:rule context="f:AppointmentResponse/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.end</sch:title>
    <sch:rule context="f:AppointmentResponse/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.participantType</sch:title>
    <sch:rule context="f:AppointmentResponse/f:participantType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AppointmentResponse/f:actor</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.actor</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.actor.extension</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.actor.reference</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.actor.type</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.actor.identifier</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.actor.display</sch:title>
    <sch:rule context="f:AppointmentResponse/f:actor/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.participantStatus</sch:title>
    <sch:rule context="f:AppointmentResponse/f:participantStatus">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>AppointmentResponse.comment</sch:title>
    <sch:rule context="f:AppointmentResponse/f:comment">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
