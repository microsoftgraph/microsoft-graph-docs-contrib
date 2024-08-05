---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().ByProvisioningFlowId("provisioningFlow-id").Patch(context.Background(), requestBody, nil)


```