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
redirectUris := graphmodels.NewRedirectUriConfiguration()
uriWithBlockedScheme := graphmodels.NewRedirectUriBlockedSchemeConfiguration()
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
uriWithBlockedScheme.SetState(&state) 
blockedSchemes := []string {
	"http",
	"ftp",
}
uriWithBlockedScheme.SetBlockedSchemes(blockedSchemes)
exemptFormats := []string {
	"http://example.com/login",
}
uriWithBlockedScheme.SetExemptFormats(exemptFormats)
web := graphmodels.NewRedirectUriPlatformBlockedSchemeConfiguration()
blockedSchemes := []string {
	"custom-ftps",
}
web.SetBlockedSchemes(blockedSchemes)
uriWithBlockedScheme.SetWeb(web)
spa := graphmodels.NewRedirectUriPlatformBlockedSchemeConfiguration()
blockedSchemes := []string {
	"myapp",
}
spa.SetBlockedSchemes(blockedSchemes)
exemptFormats := []string {
	"https://spa.example.com/auth",
}
spa.SetExemptFormats(exemptFormats)
uriWithBlockedScheme.SetSpa(spa)
publicClient := graphmodels.NewRedirectUriPlatformBlockedSchemeConfiguration()
blockedSchemes := []string {
	"msauth",
}
publicClient.SetBlockedSchemes(blockedSchemes)
exemptFormats := []string {
	"https://public.example.com/auth",
}
publicClient.SetExemptFormats(exemptFormats)
uriWithBlockedScheme.SetPublicClient(publicClient)
redirectUris.SetUriWithBlockedScheme(uriWithBlockedScheme)
uriWithoutAllowedScheme := graphmodels.NewRedirectUriAllowedSchemeConfiguration()
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
uriWithoutAllowedScheme.SetState(&state) 
allowedSchemes := []string {
	"https",
}
uriWithoutAllowedScheme.SetAllowedSchemes(allowedSchemes)
web := graphmodels.NewRedirectUriPlatformAllowedSchemeConfiguration()
allowedSchemes := []string {
	"https",
}
web.SetAllowedSchemes(allowedSchemes)
uriWithoutAllowedScheme.SetWeb(web)
spa := graphmodels.NewRedirectUriPlatformAllowedSchemeConfiguration()
allowedSchemes := []string {
	"https",
	"msal",
}
spa.SetAllowedSchemes(allowedSchemes)
uriWithoutAllowedScheme.SetSpa(spa)
publicClient := graphmodels.NewRedirectUriPlatformAllowedSchemeConfiguration()
allowedSchemes := []string {
	"myapp",
}
publicClient.SetAllowedSchemes(allowedSchemes)
uriWithoutAllowedScheme.SetPublicClient(publicClient)
redirectUris.SetUriWithoutAllowedScheme(uriWithoutAllowedScheme)
uriWithBlockedDomain := graphmodels.NewRedirectUriBlockedDomainConfiguration()
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
uriWithBlockedDomain.SetState(&state) 
blockedDomains := []string {
	"contoso-short.com",
	"tempuri.org",
}
uriWithBlockedDomain.SetBlockedDomains(blockedDomains)
web := graphmodels.NewRedirectUriPlatformBlockedDomainConfiguration()
blockedDomains := []string {
	"short.contoso.com",
}
web.SetBlockedDomains(blockedDomains)
uriWithBlockedDomain.SetWeb(web)
spa := graphmodels.NewRedirectUriPlatformBlockedDomainConfiguration()
blockedDomains := []string {
	"contoso.dev",
}
spa.SetBlockedDomains(blockedDomains)
uriWithBlockedDomain.SetSpa(spa)
publicClient := graphmodels.NewRedirectUriPlatformBlockedDomainConfiguration()
blockedDomains := []string {
	"mspreview.contoso.com",
}
publicClient.SetBlockedDomains(blockedDomains)
uriWithBlockedDomain.SetPublicClient(publicClient)
redirectUris.SetUriWithBlockedDomain(uriWithBlockedDomain)
uriWithoutAllowedDomain := graphmodels.NewRedirectUriAllowedDomainConfiguration()
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
uriWithoutAllowedDomain.SetState(&state) 
allowedDomains := []string {
	"contoso.com",
	"login.microsoftonline.com",
}
uriWithoutAllowedDomain.SetAllowedDomains(allowedDomains)
web := graphmodels.NewRedirectUriPlatformAllowedDomainConfiguration()
allowedDomains := []string {
	"app.contoso.com",
}
web.SetAllowedDomains(allowedDomains)
uriWithoutAllowedDomain.SetWeb(web)
spa := graphmodels.NewRedirectUriPlatformAllowedDomainConfiguration()
allowedDomains := []string {
	"spa.contoso.com",
}
spa.SetAllowedDomains(allowedDomains)
uriWithoutAllowedDomain.SetSpa(spa)
publicClient := graphmodels.NewRedirectUriPlatformAllowedDomainConfiguration()
allowedDomains := []string {
	"app://contoso",
}
publicClient.SetAllowedDomains(allowedDomains)
uriWithoutAllowedDomain.SetPublicClient(publicClient)
redirectUris.SetUriWithoutAllowedDomain(uriWithoutAllowedDomain)
uriWithWildcard := graphmodels.NewRedirectUriWildcardConfiguration()
state := graphmodels.ENABLED_APPMANAGEMENTRESTRICTIONSTATE 
uriWithWildcard.SetState(&state) 
excludeFormats := graphmodels.NewRedirectUriWildcardExcludeFormats()
excludeWildcardsInPath := true
excludeFormats.SetExcludeWildcardsInPath(&excludeWildcardsInPath) 
excludeWildcardsInPathWithDomains := []string {
	"contoso.com",
	"fabrikam.com",
}
excludeFormats.SetExcludeWildcardsInPathWithDomains(excludeWildcardsInPathWithDomains)
uriWithWildcard.SetExcludeFormats(excludeFormats)
redirectUris.SetUriWithWildcard(uriWithWildcard)
applicationRestrictions.SetRedirectUris(redirectUris)
requestBody.SetApplicationRestrictions(applicationRestrictions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
defaultAppManagementPolicy, err := graphClient.Policies().DefaultAppManagementPolicy().Patch(context.Background(), requestBody, nil)


```