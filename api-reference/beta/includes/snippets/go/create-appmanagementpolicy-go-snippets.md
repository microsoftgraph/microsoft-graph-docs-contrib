---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppManagementPolicy()
displayName := "Credential management policy"
requestBody.SetDisplayName(&displayName) 
description := "Cred policy sample"
requestBody.SetDescription(&description) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
restrictions := graphmodels.NewAppManagementConfiguration()


passwordCredentialConfiguration := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration.SetRestrictionType(&restrictionType) 
maxLifetime := null
passwordCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
passwordCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration1 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration1.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
passwordCredentialConfiguration1.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
passwordCredentialConfiguration1.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration2 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration2.SetRestrictionType(&restrictionType) 
maxLifetime := null
passwordCredentialConfiguration2.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
passwordCredentialConfiguration2.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration3 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration3.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P30D")
passwordCredentialConfiguration3.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
passwordCredentialConfiguration3.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 

passwordCredentials := []graphmodels.PasswordCredentialConfigurationable {
	passwordCredentialConfiguration,
	passwordCredentialConfiguration1,
	passwordCredentialConfiguration2,
	passwordCredentialConfiguration3,
}
restrictions.SetPasswordCredentials(passwordCredentials)


keyCredentialConfiguration := graphmodels.NewKeyCredentialConfiguration()
restrictionType := graphmodels.ASYMMETRICKEYLIFETIME_APPKEYCREDENTIALRESTRICTIONTYPE 
keyCredentialConfiguration.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
keyCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
keyCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
keyCredentialConfiguration1 := graphmodels.NewKeyCredentialConfiguration()
restrictionType := graphmodels.TRUSTEDCERTIFICATEAUTHORITY_APPKEYCREDENTIALRESTRICTIONTYPE 
keyCredentialConfiguration1.SetRestrictionType(&restrictionType) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
keyCredentialConfiguration1.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
certificateBasedApplicationConfigurationIds := []string {
	"eec5ba11-2fc0-4113-83a2-ed986ed13743",
	"bb8e164b-f9ed-4b98-bc45-65eddc14f4c1",
}
keyCredentialConfiguration1.SetCertificateBasedApplicationConfigurationIds(certificateBasedApplicationConfigurationIds)
maxLifetime := null
keyCredentialConfiguration1.SetMaxLifetime(&maxLifetime) 

keyCredentials := []graphmodels.KeyCredentialConfigurationable {
	keyCredentialConfiguration,
	keyCredentialConfiguration1,
}
restrictions.SetKeyCredentials(keyCredentials)
requestBody.SetRestrictions(restrictions)

appManagementPolicies, err := graphClient.Policies().AppManagementPolicies().Post(context.Background(), requestBody, nil)


```