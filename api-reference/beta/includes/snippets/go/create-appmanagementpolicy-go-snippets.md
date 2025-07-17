---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAppManagementPolicy()
displayName := "Credential management policy"
requestBody.SetDisplayName(&displayName) 
description := "Cred policy sample"
requestBody.SetDescription(&description) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
restrictions := graphmodels.NewCustomAppManagementConfiguration()


passwordCredentialConfiguration := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration.SetRestrictionType(&restrictionType) 
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
passwordCredentialConfiguration.SetState(&state) 
maxLifetime := null
passwordCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
passwordCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration1 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration1.SetRestrictionType(&restrictionType) 
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
passwordCredentialConfiguration1.SetState(&state) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
passwordCredentialConfiguration1.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
passwordCredentialConfiguration1.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration2 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration2.SetRestrictionType(&restrictionType) 
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
passwordCredentialConfiguration2.SetState(&state) 
maxLifetime := null
passwordCredentialConfiguration2.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
passwordCredentialConfiguration2.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
passwordCredentialConfiguration3 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration3.SetRestrictionType(&restrictionType) 
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
passwordCredentialConfiguration3.SetState(&state) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
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
keyCredentials := []graphmodels.KeyCredentialConfigurationable {

}
restrictions.SetKeyCredentials(keyCredentials)
applicationRestrictions := graphmodels.NewCustomAppManagementApplicationConfiguration()
identifierUris := graphmodels.NewIdentifierUriConfiguration()
nonDefaultUriAddition := graphmodels.NewIdentifierUriRestriction()
state := graphmodels.DISABLED_APPMANAGEMENTRESTRICTIONSTATE 
nonDefaultUriAddition.SetState(&state) 
restrictForAppsCreatedAfterDateTime := null
nonDefaultUriAddition.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
excludeAppsReceivingV2Tokens := true
nonDefaultUriAddition.SetExcludeAppsReceivingV2Tokens(&excludeAppsReceivingV2Tokens) 
excludeSaml := true
nonDefaultUriAddition.SetExcludeSaml(&excludeSaml) 
identifierUris.SetNonDefaultUriAddition(nonDefaultUriAddition)
applicationRestrictions.SetIdentifierUris(identifierUris)
restrictions.SetApplicationRestrictions(applicationRestrictions)
requestBody.SetRestrictions(restrictions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appManagementPolicies, err := graphClient.Policies().AppManagementPolicies().Post(context.Background(), requestBody, nil)


```