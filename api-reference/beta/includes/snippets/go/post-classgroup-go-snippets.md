---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsindustrydata.NewProvisioningFlow()
configuration := graphmodelsindustrydata.NewClassGroupConfiguration()
additionalAttributes := []graphmodelsindustrydata.AdditionalClassGroupAttributesable {
	additionalClassGroupAttributes := graphmodels.COURSETITLE_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes) 
	additionalClassGroupAttributes := graphmodels.COURSECODE_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes) 
	additionalClassGroupAttributes := graphmodels.COURSESUBJECT_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes) 
	additionalClassGroupAttributes := graphmodels.COURSEGRADELEVEL_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes) 
	additionalClassGroupAttributes := graphmodels.COURSEEXTERNALID_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes) 
	additionalClassGroupAttributes := graphmodels.ACADEMICSESSIONTITLE_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes) 
	additionalClassGroupAttributes := graphmodels.ACADEMICSESSIONEXTERNALID_ADDITIONALCLASSGROUPATTRIBUTES 
	configuration.SetAdditionalClassGroupAttributes(&additionalClassGroupAttributes)
}
configuration.SetAdditionalAttributes(additionalAttributes)
additionalOptions := graphmodelsindustrydata.NewAdditionalClassGroupOptions()
createTeam := true
additionalOptions.SetCreateTeam(&createTeam) 
writeDisplayNameOnCreateOnly := true
additionalOptions.SetWriteDisplayNameOnCreateOnly(&writeDisplayNameOnCreateOnly) 
configuration.SetAdditionalOptions(additionalOptions)
enrollmentMappings := graphmodelsindustrydata.NewEnrollmentMappings()


sectionRoleReferenceValue := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "teacher"
sectionRoleReferenceValue.SetCode(&code) 
sectionRoleReferenceValue1 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "proctor"
sectionRoleReferenceValue1.SetCode(&code) 
sectionRoleReferenceValue2 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "teacherAssistant"
sectionRoleReferenceValue2.SetCode(&code) 
sectionRoleReferenceValue3 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "paraProfessional"
sectionRoleReferenceValue3.SetCode(&code) 
sectionRoleReferenceValue4 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "physicalTherapist"
sectionRoleReferenceValue4.SetCode(&code) 
sectionRoleReferenceValue5 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "speechTherapist"
sectionRoleReferenceValue5.SetCode(&code) 
sectionRoleReferenceValue6 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "visionTherapist"
sectionRoleReferenceValue6.SetCode(&code) 
sectionRoleReferenceValue7 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "occupationalTherapist"
sectionRoleReferenceValue7.SetCode(&code) 
sectionRoleReferenceValue8 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "staff"
sectionRoleReferenceValue8.SetCode(&code) 

ownerEnrollmentMappings := []graphmodelsindustrydata.SectionRoleReferenceValueable {
	sectionRoleReferenceValue,
	sectionRoleReferenceValue1,
	sectionRoleReferenceValue2,
	sectionRoleReferenceValue3,
	sectionRoleReferenceValue4,
	sectionRoleReferenceValue5,
	sectionRoleReferenceValue6,
	sectionRoleReferenceValue7,
	sectionRoleReferenceValue8,
}
enrollmentMappings.SetOwnerEnrollmentMappings(ownerEnrollmentMappings)


sectionRoleReferenceValue := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "student"
sectionRoleReferenceValue.SetCode(&code) 
sectionRoleReferenceValue1 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "substitute"
sectionRoleReferenceValue1.SetCode(&code) 
sectionRoleReferenceValue2 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "aide"
sectionRoleReferenceValue2.SetCode(&code) 
sectionRoleReferenceValue3 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "proctor"
sectionRoleReferenceValue3.SetCode(&code) 
sectionRoleReferenceValue4 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "teacherAssistant"
sectionRoleReferenceValue4.SetCode(&code) 
sectionRoleReferenceValue5 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "paraProfessional"
sectionRoleReferenceValue5.SetCode(&code) 
sectionRoleReferenceValue6 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "physicalTherapist"
sectionRoleReferenceValue6.SetCode(&code) 
sectionRoleReferenceValue7 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "speechTherapist"
sectionRoleReferenceValue7.SetCode(&code) 
sectionRoleReferenceValue8 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "visionTherapist"
sectionRoleReferenceValue8.SetCode(&code) 
sectionRoleReferenceValue9 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "occupationalTherapist"
sectionRoleReferenceValue9.SetCode(&code) 
sectionRoleReferenceValue10 := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "staff"
sectionRoleReferenceValue10.SetCode(&code) 

memberEnrollmentMappings := []graphmodelsindustrydata.SectionRoleReferenceValueable {
	sectionRoleReferenceValue,
	sectionRoleReferenceValue1,
	sectionRoleReferenceValue2,
	sectionRoleReferenceValue3,
	sectionRoleReferenceValue4,
	sectionRoleReferenceValue5,
	sectionRoleReferenceValue6,
	sectionRoleReferenceValue7,
	sectionRoleReferenceValue8,
	sectionRoleReferenceValue9,
	sectionRoleReferenceValue10,
}
enrollmentMappings.SetMemberEnrollmentMappings(memberEnrollmentMappings)
configuration.SetEnrollmentMappings(enrollmentMappings)
requestBody.SetConfiguration(configuration)

provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().Post(context.Background(), requestBody, nil)


```