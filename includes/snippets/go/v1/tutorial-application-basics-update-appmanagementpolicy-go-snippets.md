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

requestBody := graphmodels.NewTenantAppManagementPolicy()
id := "d015220e-9789-4e8e-bbcc-270fe419229d"
requestBody.SetId(&id) 
description := "Lorem ipsum"
requestBody.SetDescription(&description) 
displayName := "Credential management policy"
requestBody.SetDisplayName(&displayName) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
applicationRestrictions := graphmodels.NewAppManagementApplicationConfiguration()


passwordCredentialConfiguration := graphmodels.NewPasswordCredentialConfiguration()
restrictionType := graphmodels.PASSWORDLIFETIME_APPCREDENTIALRESTRICTIONTYPE 
passwordCredentialConfiguration.SetRestrictionType(&restrictionType) 
maxLifetime , err := abstractions.ParseISODuration("P14D")
passwordCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2020-01-01T07:00:00Z")
passwordCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 

passwordCredentials := []graphmodels.PasswordCredentialConfigurationable {
	passwordCredentialConfiguration,
}
applicationRestrictions.SetPasswordCredentials(passwordCredentials)


keyCredentialConfiguration := graphmodels.NewKeyCredentialConfiguration()
restrictionType := graphmodels.CERTIFICATELIFETIME_APPKEYCREDENTIALRESTRICTIONTYPE 
keyCredentialConfiguration.SetRestrictionType(&restrictionType) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2020-01-01T10:37:00Z")
keyCredentialConfiguration.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
maxLifetime , err := abstractions.ParseISODuration("P90D")
keyCredentialConfiguration.SetMaxLifetime(&maxLifetime) 
keyCredentialConfiguration1 := graphmodels.NewKeyCredentialConfiguration()
restrictionType := graphmodels.TRUSTEDCERTIFICATEAUTHORITY_APPKEYCREDENTIALRESTRICTIONTYPE 
keyCredentialConfiguration1.SetRestrictionType(&restrictionType) 
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
keyCredentialConfiguration1.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
additionalData := map[string]interface{}{
	certificateBasedApplicationConfigurationIds := []string {
		"eec5ba11-2fc0-4113-83a2-ed986ed13743",
	}
}
keyCredentialConfiguration1.SetAdditionalData(additionalData)

keyCredentials := []graphmodels.KeyCredentialConfigurationable {
	keyCredentialConfiguration,
	keyCredentialConfiguration1,
}
applicationRestrictions.SetKeyCredentials(keyCredentials)
requestBody.SetApplicationRestrictions(applicationRestrictions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
defaultAppManagementPolicy, err := graphClient.Policies().DefaultAppManagementPolicy().Patch(context.Background(), requestBody, nil)


```