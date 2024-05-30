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
configuration.setAdditionalAttributes(additionalAttributes);
com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupOptions additionalOptions = new com.microsoft.graph.beta.models.industrydata.AdditionalClassGroupOptions();
additionalOptions.setOdataType("#microsoft.graph.industryData.additionalClassGroupOptions");
additionalOptions.setCreateTeam(false);
additionalOptions.setWriteDisplayNameOnCreateOnly(false);
configuration.setAdditionalOptions(additionalOptions);
com.microsoft.graph.beta.models.industrydata.EnrollmentMappings enrollmentMappings = new com.microsoft.graph.beta.models.industrydata.EnrollmentMappings();
enrollmentMappings.setOdataType("#microsoft.graph.industryData.enrollmentMappings");
LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue> memberEnrollmentMappings = new LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue>();
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue.setCode("substitute");
memberEnrollmentMappings.add(sectionRoleReferenceValue);
enrollmentMappings.setMemberEnrollmentMappings(memberEnrollmentMappings);
LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue> ownerEnrollmentMappings = new LinkedList<com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue>();
com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue sectionRoleReferenceValue1 = new com.microsoft.graph.beta.models.industrydata.SectionRoleReferenceValue();
sectionRoleReferenceValue1.setOdataType("#microsoft.graph.industryData.sectionRoleReferenceValue");
sectionRoleReferenceValue1.setCode("teacher");
ownerEnrollmentMappings.add(sectionRoleReferenceValue1);
enrollmentMappings.setOwnerEnrollmentMappings(ownerEnrollmentMappings);
configuration.setEnrollmentMappings(enrollmentMappings);
provisioningFlow.setConfiguration(configuration);
com.microsoft.graph.models.industrydata.ProvisioningFlow result = graphClient.external().industryData().outboundProvisioningFlowSets().byOutboundProvisioningFlowSetId("{outboundProvisioningFlowSet-id}").provisioningFlows().byProvisioningFlowId("{provisioningFlow-id}").patch(provisioningFlow);


```