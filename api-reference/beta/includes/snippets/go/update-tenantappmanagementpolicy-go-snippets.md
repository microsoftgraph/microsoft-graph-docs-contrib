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

requestBody := graphmodels.NewTenantAppManagementPolicy()
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
applicationRestrictions := graphmodels.NewAppManagementApplicationConfiguration()


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
maxLifetime , err := abstractions.ParseISODuration("P90D")
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
maxLifetime , err := abstractions.ParseISODuration("P30D")
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
applicationRestrictions.SetKeyCredentials(keyCredentials)
identifierUris := graphmodels.NewIdentifierUriConfiguration()
nonDefaultUriAddition := graphmodels.NewIdentifierUriRestriction()
restrictForAppsCreatedAfterDateTime , err := time.Parse(time.RFC3339, "2024-01-01T10:37:00Z")
nonDefaultUriAddition.SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime) 
excludeAppsReceivingV2Tokens := true
nonDefaultUriAddition.SetExcludeAppsReceivingV2Tokens(&excludeAppsReceivingV2Tokens) 
excludeSaml := true
nonDefaultUriAddition.SetExcludeSaml(&excludeSaml) 
excludeActors := graphmodels.NewAppManagementPolicyActorExemptions()


customSecurityAttributeExemption := graphmodels.NewCustomSecurityAttributeStringValueExemption()
id := "PolicyExemptions_AppManagementExemption"
customSecurityAttributeExemption.SetId(&id) 
operator := graphmodels.EQUALS_CUSTOMSECURITYATTRIBUTECOMPARISONOPERATOR 
customSecurityAttributeExemption.SetOperator(&operator) 
value := "ExemptFromIdentifierUriAdditionRestriction"
customSecurityAttributeExemption.SetValue(&value) 

customSecurityAttributes := []graphmodels.CustomSecurityAttributeExemptionable {
	customSecurityAttributeExemption,
}
excludeActors.SetCustomSecurityAttributes(customSecurityAttributes)
nonDefaultUriAddition.SetExcludeActors(excludeActors)
identifierUris.SetNonDefaultUriAddition(nonDefaultUriAddition)
applicationRestrictions.SetIdentifierUris(identifierUris)
requestBody.SetApplicationRestrictions(applicationRestrictions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
defaultAppManagementPolicy, err := graphClient.Policies().DefaultAppManagementPolicy().Patch(context.Background(), requestBody, nil)


```