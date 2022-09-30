---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGovernanceRoleSetting()


governanceRuleSetting := graphmodels.NewGovernanceRuleSetting()
ruleIdentifier := "ExpirationRule"
governanceRuleSetting.SetRuleIdentifier(&ruleIdentifier) 
setting := "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"
governanceRuleSetting.SetSetting(&setting) 

adminEligibleSettings := []graphmodels.GovernanceRuleSettingable {
	governanceRuleSetting,

}
requestBody.SetAdminEligibleSettings(adminEligibleSettings)

result, err := graphClient.PrivilegedAccessById("privilegedAccess-id").RoleSettingsById("governanceRoleSetting-id").Patch(context.Background(), requestBody, nil)


```