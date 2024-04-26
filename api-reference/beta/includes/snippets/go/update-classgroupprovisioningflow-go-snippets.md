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
}
configuration.SetAdditionalAttributes(additionalAttributes)
additionalOptions := graphmodelsindustrydata.NewAdditionalClassGroupOptions()
createTeam := false
additionalOptions.SetCreateTeam(&createTeam) 
writeDisplayNameOnCreateOnly := false
additionalOptions.SetWriteDisplayNameOnCreateOnly(&writeDisplayNameOnCreateOnly) 
configuration.SetAdditionalOptions(additionalOptions)
enrollmentMappings := graphmodelsindustrydata.NewEnrollmentMappings()


sectionRoleReferenceValue := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "substitute"
sectionRoleReferenceValue.SetCode(&code) 

memberEnrollmentMappings := []graphmodelsindustrydata.SectionRoleReferenceValueable {
	sectionRoleReferenceValue,
}
enrollmentMappings.SetMemberEnrollmentMappings(memberEnrollmentMappings)


sectionRoleReferenceValue := graphmodelsindustrydata.NewSectionRoleReferenceValue()
code := "teacher"
sectionRoleReferenceValue.SetCode(&code) 

ownerEnrollmentMappings := []graphmodelsindustrydata.SectionRoleReferenceValueable {
	sectionRoleReferenceValue,
}
enrollmentMappings.SetOwnerEnrollmentMappings(ownerEnrollmentMappings)
configuration.SetEnrollmentMappings(enrollmentMappings)
requestBody.SetConfiguration(configuration)

provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().ByProvisioningFlowId("provisioningFlow-id").Patch(context.Background(), requestBody, nil)


```