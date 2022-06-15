---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGovernanceRoleSetting()
requestBody.SetAdminEligibleSettings( []GovernanceRuleSetting {
	msgraphsdk.NewGovernanceRuleSetting(),
ruleIdentifier := "ExpirationRule"
	SetRuleIdentifier(&ruleIdentifier)
setting := "{"permanentAssignment":false,"maximumGrantPeriodInMinutes":129600}"
	SetSetting(&setting)
}
privilegedAccessId := "privilegedAccess-id"
governanceRoleSettingId := "governanceRoleSetting-id"
graphClient.PrivilegedAccessById(&privilegedAccessId).RoleSettingsById(&governanceRoleSettingId).Patch(requestBody)


```