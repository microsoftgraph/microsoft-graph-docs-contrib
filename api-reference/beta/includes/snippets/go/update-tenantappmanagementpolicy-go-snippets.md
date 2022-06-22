---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTenantAppManagementPolicy()
isEnabled := true
requestBody.SetIsEnabled(&isEnabled)
applicationRestrictions := msgraphsdk.NewAppManagementConfiguration()
requestBody.SetApplicationRestrictions(applicationRestrictions)
applicationRestrictions.SetPasswordCredentials( []PasswordCredentialConfiguration {
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "passwordAddition"
	SetRestrictionType(&restrictionType)
	SetMaxLifetime(nil)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2021-01-01T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "passwordLifetime"
	SetRestrictionType(&restrictionType)
maxLifetime := "P4DT12H30M5S"
	SetMaxLifetime(&maxLifetime)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2017-01-01T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "symmetricKeyAddition"
	SetRestrictionType(&restrictionType)
	SetMaxLifetime(nil)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2021-01-01T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "customPasswordAddition"
	SetRestrictionType(&restrictionType)
	SetMaxLifetime(nil)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2015-01-01T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "symmetricKeyLifetime"
	SetRestrictionType(&restrictionType)
maxLifetime := "P40D"
	SetMaxLifetime(&maxLifetime)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2015-01-01T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
}
applicationRestrictions.SetKeyCredentials( []KeyCredentialConfiguration {
	msgraphsdk.NewKeyCredentialConfiguration(),
restrictionType := "asymmetricKeyLifetime"
	SetRestrictionType(&restrictionType)
maxLifetime := "P30D"
	SetMaxLifetime(&maxLifetime)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2015-01-01T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
}
graphClient.Policies().DefaultAppManagementPolicy().Patch(requestBody)


```