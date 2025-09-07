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
createUnmatchedUsers := true
requestBody.SetCreateUnmatchedUsers(&createUnmatchedUsers) 
managementOptions := graphmodelsindustrydata.NewUserManagementOptions()
additionalAttributes := []graphmodelsindustrydata.AdditionalUserAttributesable {
	additionalUserAttributes := graphmodels.USERGRADELEVEL_ADDITIONALUSERATTRIBUTES 
	managementOptions.SetAdditionalUserAttributes(&additionalUserAttributes)
}
managementOptions.SetAdditionalAttributes(additionalAttributes)
additionalOptions := graphmodelsindustrydata.NewAdditionalUserOptions()
studentAgeGroup := graphmodels.MINOR_STUDENTAGEGROUP 
additionalOptions.SetStudentAgeGroup(&studentAgeGroup) 
allowStudentContactAssociation := true
additionalOptions.SetAllowStudentContactAssociation(&allowStudentContactAssociation) 
managementOptions.SetAdditionalOptions(additionalOptions)
requestBody.SetManagementOptions(managementOptions)
creationOptions := graphmodelsindustrydata.NewUserCreationOptions()


userConfiguration := graphmodelsindustrydata.NewUserConfiguration()
defaultPasswordSettings := graphmodelsindustrydata.NewSimplePasswordSettings()
password := "********"
defaultPasswordSettings.SetPassword(&password) 
userConfiguration.SetDefaultPasswordSettings(defaultPasswordSettings)
licenseSkus := []string {
	"SkuUpdated",
}
userConfiguration.SetLicenseSkus(licenseSkus)
additionalData := map[string]interface{}{
	"roleGroup@odata.bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff", 
}
userConfiguration.SetAdditionalData(additionalData)
userConfiguration1 := graphmodelsindustrydata.NewUserConfiguration()
defaultPasswordSettings := graphmodelsindustrydata.NewSimplePasswordSettings()
password := "********"
defaultPasswordSettings.SetPassword(&password) 
userConfiguration1.SetDefaultPasswordSettings(defaultPasswordSettings)
licenseSkus := []string {
	"SkuUpdated2",
}
userConfiguration1.SetLicenseSkus(licenseSkus)
additionalData := map[string]interface{}{
	"roleGroup@odata.bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/students", 
}
userConfiguration1.SetAdditionalData(additionalData)

configurations := []graphmodelsindustrydata.UserConfigurationable {
	userConfiguration,
	userConfiguration1,
}
creationOptions.SetConfigurations(configurations)
requestBody.SetCreationOptions(creationOptions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().ByProvisioningFlowId("provisioningFlow-id").Patch(context.Background(), requestBody, nil)


```