---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
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
maxLifetime := null
passwordCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
passwordCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
additionalData := map[string]interface{}{
	"state" : "enabled", 
}
passwordCredentialConfiguration.SetAdditionalData(additionalData)
passwordCredentialConfiguration1 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration1.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
passwordCredentialConfiguration1.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
passwordCredentialConfiguration1.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
additionalData := map[string]interface{}{
	"state" : "enabled", 
}
passwordCredentialConfiguration1.SetAdditionalData(additionalData)
passwordCredentialConfiguration2 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYADDITION_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration2.SetRestrictionType(&restrictionType) 
maxLifetime := null
passwordCredentialConfiguration2.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
passwordCredentialConfiguration2.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
additionalData := map[string]interface{}{
	"state" : "enabled", 
}
passwordCredentialConfiguration2.SetAdditionalData(additionalData)
passwordCredentialConfiguration3 := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.SYMMETRICKEYLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration3.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
passwordCredentialConfiguration3.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
passwordCredentialConfiguration3.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
additionalData := map[string]interface{}{
	"state" : "enabled", 
}
passwordCredentialConfiguration3.SetAdditionalData(additionalData)

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
additionalData := map[string]interface{}{
applicationRestrictions := graph.New()
identifierUris := graph.New()
nonDefaultUriAddition := graph.New()
state := "disabled"
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
}
restrictions.SetAdditionalData(additionalData)
requestBody.SetRestrictions(restrictions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appManagementPolicies, err := graphClient.Policies().AppManagementPolicies().Post(context.Background(), requestBody, nil)


```