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
createUnmatchedUsers := true
requestBody.SetCreateUnmatchedUsers(&createUnmatchedUsers) 
managementOptions := graphmodelsindustrydata.NewUserManagementOptions()
additionalAttributes := []graphmodelsindustrydata.AdditionalUserAttributesable {
	additionalUserAttributes := graphmodels.USERGRADELEVEL_ADDITIONALUSERATTRIBUTES 
	managementOptions.SetAdditionalUserAttributes(&additionalUserAttributes)
}
managementOptions.SetAdditionalAttributes(additionalAttributes)
additionalOptions := graphmodelsindustrydata.NewAdditionalUserOptions()
markAllStudentsAsMinors := true
additionalOptions.SetMarkAllStudentsAsMinors(&markAllStudentsAsMinors) 
allowStudentContactAssociation := false
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
	"Sku1",
}
userConfiguration.SetLicenseSkus(licenseSkus)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff", 
}
userConfiguration.SetAdditionalData(additionalData)
userConfiguration1 := graphmodelsindustrydata.NewUserConfiguration()
defaultPasswordSettings := graphmodelsindustrydata.NewSimplePasswordSettings()
password := "********"
defaultPasswordSettings.SetPassword(&password) 
userConfiguration1.SetDefaultPasswordSettings(defaultPasswordSettings)
licenseSkus := []string {
	"Sku2",
}
userConfiguration1.SetLicenseSkus(licenseSkus)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/students", 
}
userConfiguration1.SetAdditionalData(additionalData)

configurations := []graphmodelsindustrydata.UserConfigurationable {
	userConfiguration,
	userConfiguration1,
}
creationOptions.SetConfigurations(configurations)
requestBody.SetCreationOptions(creationOptions)

provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().Post(context.Background(), requestBody, nil)


```