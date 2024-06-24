---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.ClassGroupProvisioningFlow provisioningFlow = new com.microsoft.graph.beta.models.industrydata.ClassGroupProvisioningFlow();
provisioningFlow.setOdataType("#microsoft.graph.industryData.classGroupProvisioningFlow");
com.microsoft.graph.beta.models.industrydata.ClassGroupConfiguration configuration = new com.microsoft.graph.beta.models.industrydata.ClassGroupConfiguration();
configuration.setOdataType("#microsoft.graph.industryData.classGroupConfiguration");
LinkedList<com.microsoft.graph.beta.models.industrydata.com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes> additionalAttributes = new LinkedList<com.microsoft.graph.beta.models.industrydata.com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes>();
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.CourseTitle);
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.CourseCode);
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.CourseSubject);
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.CourseGradeLevel);
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.CourseExternalId);
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.AcademicSessionTitle);
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupAttributes.AcademicSessionExternalId);
configuration.setAdditionalAttributes(additionalAttributes);
com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupOptions additionalOptions = new com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupOptions();
additionalOptions.setOdataType("#microsoft.graph.industryData.additionalClassGroupOptions");
additionalOptions.setCreateTeam(true);
additionalOptions.setWriteDisplayNameOnCreateOnly(true);
configuration.setAdditionalOptions(additionalOptions);
com.microsoft.graph.beta.models.industrydata.EnrollmentMappings enrollmentMappings = new com.microsoft.graph.beta.models.industrydata.EnrollmentMappings();
enrollmentMappings.setOdataType("#microsoft.graph.industryData.enrollmentMappings");
LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue> ownerEnrollmentMappings = new LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue>();
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue.setCode("teacher");
ownerEnrollmentMappings.add(sectionRoleReferenceValue);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue1 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue1.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue1.setCode("proctor");
ownerEnrollmentMappings.add(sectionRoleReferenceValue1);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue2 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue2.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue2.setCode("teacherAssistant");
ownerEnrollmentMappings.add(sectionRoleReferenceValue2);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue3 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue3.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue3.setCode("paraProfessional");
ownerEnrollmentMappings.add(sectionRoleReferenceValue3);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue4 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue4.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue4.setCode("physicalTherapist");
ownerEnrollmentMappings.add(sectionRoleReferenceValue4);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue5 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue5.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue5.setCode("speechTherapist");
ownerEnrollmentMappings.add(sectionRoleReferenceValue5);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue6 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue6.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue6.setCode("visionTherapist");
ownerEnrollmentMappings.add(sectionRoleReferenceValue6);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue7 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue7.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue7.setCode("occupationalTherapist");
ownerEnrollmentMappings.add(sectionRoleReferenceValue7);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue8 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue8.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue8.setCode("staff");
ownerEnrollmentMappings.add(sectionRoleReferenceValue8);
enrollmentMappings.setOwnerEnrollmentMappings(ownerEnrollmentMappings);
LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue> memberEnrollmentMappings = new LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue>();
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue9 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue9.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue9.setCode("student");
memberEnrollmentMappings.add(sectionRoleReferenceValue9);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue10 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue10.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue10.setCode("substitute");
memberEnrollmentMappings.add(sectionRoleReferenceValue10);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue11 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue11.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue11.setCode("aide");
memberEnrollmentMappings.add(sectionRoleReferenceValue11);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue12 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue12.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue12.setCode("proctor");
memberEnrollmentMappings.add(sectionRoleReferenceValue12);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue13 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue13.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue13.setCode("teacherAssistant");
memberEnrollmentMappings.add(sectionRoleReferenceValue13);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue14 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue14.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue14.setCode("paraProfessional");
memberEnrollmentMappings.add(sectionRoleReferenceValue14);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue15 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue15.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue15.setCode("physicalTherapist");
memberEnrollmentMappings.add(sectionRoleReferenceValue15);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue16 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue16.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue16.setCode("speechTherapist");
memberEnrollmentMappings.add(sectionRoleReferenceValue16);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue17 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue17.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue17.setCode("visionTherapist");
memberEnrollmentMappings.add(sectionRoleReferenceValue17);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue18 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue18.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue18.setCode("occupationalTherapist");
memberEnrollmentMappings.add(sectionRoleReferenceValue18);
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue19 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue19.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue19.setCode("staff");
memberEnrollmentMappings.add(sectionRoleReferenceValue19);
enrollmentMappings.setMemberEnrollmentMappings(memberEnrollmentMappings);
configuration.setEnrollmentMappings(enrollmentMappings);
provisioningFlow.setConfiguration(configuration);
com.microsoft.graph.models.industrydata.ProvisioningFlow result = graphClient.external().industryData().outboundProvisioningFlowSets().byOutboundProvisioningFlowSetId("{outboundProvisioningFlowSet-id}").provisioningFlows().post(provisioningFlow);


```