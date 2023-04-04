---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTenantAppManagementPolicy()
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
applicationRestrictions := graphmodels.NewAppManagementConfiguration()


passwordCredentialConfiguration := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration.SetRestrictionType(&restrictionType) 
maxLifetime := null
passwordCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2021-01-01T10:37:00Z")
passwordCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration1 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration1.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P4DT12H30M5S")
passwordCredentialConfiguration1.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2017-01-01T10:37:00Z")
passwordCredentialConfiguration1.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration2 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration2.SetRestrictionType(&restrictionType) 
maxLifetime := null
passwordCredentialConfiguration2.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2021-01-01T10:37:00Z")
passwordCredentialConfiguration2.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration3 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.CUSTOMPASSWORDADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration3.SetRestrictionType(&restrictionType) 
maxLifetime := null
passwordCredentialConfiguration3.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2015-01-01T10:37:00Z")
passwordCredentialConfiguration3.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration4 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration4.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P40D")
passwordCredentialConfiguration4.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2015-01-01T10:37:00Z")
passwordCredentialConfiguration4.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 

passwordCredentials := []graphmodels.PasswordCredentialConfigurationable {
	passwordCredentialConfiguration,
	passwordCredentialConfiguration1,
	passwordCredentialConfiguration2,
	passwordCredentialConfiguration3,
	passwordCredentialConfiguration4,

}
applicationRestrictions.SetPasswordCredentials(passwordCredentials)


keyCredentialConfiguration := graphmodels.NewKeyCredentialConfiguration()
restrictionType := graphmodels.ASYMMETRICKEYLIFETIME_APPKEYCREDENTIALRESTRICTIONTYPE 
keyCredentialConfiguration.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P30D")
keyCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2015-01-01T10:37:00Z")
keyCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 

keyCredentials := []graphmodels.KeyCredentialConfigurationable {
	keyCredentialConfiguration,

}
applicationRestrictions.SetKeyCredentials(keyCredentials)
requestBody.SetApplicationRestrictions(applicationRestrictions)

result, err := graphClient.Policies().DefaultAppManagementPolicy().Patch(context.Background(), requestBody, nil)


```