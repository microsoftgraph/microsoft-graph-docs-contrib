---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAppManagementPolicy()
displayName := "Credential management policy"
requestBody.SetDisplayName(&displayName)
description := "Cred policy sample"
requestBody.SetDescription(&description)
isEnabled := true
requestBody.SetIsEnabled(&isEnabled)
restrictions := msgraphsdk.NewAppManagementConfiguration()
requestBody.SetRestrictions(restrictions)
restrictions.SetPasswordCredentials( []PasswordCredentialConfiguration {
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "passwordAddition"
	SetRestrictionType(&restrictionType)
	SetMaxLifetime(nil)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "passwordLifetime"
	SetRestrictionType(&restrictionType)
maxLifetime := "P4DT12H30M5S"
	SetMaxLifetime(&maxLifetime)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "symmetricKeyAddition"
	SetRestrictionType(&restrictionType)
	SetMaxLifetime(nil)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2019-10-19T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
	msgraphsdk.NewPasswordCredentialConfiguration(),
restrictionType := "symmetricKeyLifetime"
	SetRestrictionType(&restrictionType)
maxLifetime := "P4D"
	SetMaxLifetime(&maxLifetime)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
}
restrictions.SetKeyCredentials( []KeyCredentialConfiguration {
	msgraphsdk.NewKeyCredentialConfiguration(),
restrictionType := "asymmetricKeyLifetime"
	SetRestrictionType(&restrictionType)
maxLifetime := "P90D"
	SetMaxLifetime(&maxLifetime)
restrictForAppsCreatedAfterDateTime, err := time.Parse(time.RFC3339, "2014-10-19T10:37:00Z")
	SetRestrictForAppsCreatedAfterDateTime(&restrictForAppsCreatedAfterDateTime)
}
result, err := graphClient.Policies().AppManagementPolicies().Post(requestBody)


```