---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGovernanceRoleSetting()
requestBody.SetAdminEligibleSettings( []GovernanceRuleSetting {
	msgraphsdk.NewGovernanceRuleSetting(),
	SetAdditionalData(map[string]interface{}{
		"ruleIdentifier": "ExpirationRule",
		"setting": "{"permanentAssignment":false,"maximumGrantPeriodInMinutes":129600}",
	}
}
options := &msgraphsdk.GovernanceRoleSettingRequestBuilderPatchOptions{
	Body: requestBody,
}
privilegedAccessId := "privilegedAccess-id"
governanceRoleSettingId := "governanceRoleSetting-id"
graphClient.PrivilegedAccessById(&privilegedAccessId).RoleSettingsById(&governanceRoleSettingId).Patch(options)


```