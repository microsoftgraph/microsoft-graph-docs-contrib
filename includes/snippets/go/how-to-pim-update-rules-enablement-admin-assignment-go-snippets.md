---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnifiedRoleManagementPolicyRule()
id := "Enablement_Admin_Assignment"
requestBody.SetId(&id) 
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "Admin"
target.SetCaller(&caller) 
operations := []graphmodels.UnifiedRoleManagementPolicyRuleTargetOperationsable {
	unifiedRoleManagementPolicyRuleTargetOperations := graphmodels.ALL_UNIFIEDROLEMANAGEMENTPOLICYRULETARGETOPERATIONS 
	target.SetUnifiedRoleManagementPolicyRuleTargetOperations(&unifiedRoleManagementPolicyRuleTargetOperations) 

}
target.SetOperations(operations)
level := "Assignment"
target.SetLevel(&level) 
inheritableSettings := []string {

}
target.SetInheritableSettings(inheritableSettings)
enforcedSettings := []string {

}
target.SetEnforcedSettings(enforcedSettings)
requestBody.SetTarget(target)
additionalData := map[string]interface{}{
	enabledRules := []string {
		"Justification",
		"MultiFactorAuthentication",

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Policies().RoleManagementPoliciesById("unifiedRoleManagementPolicy-id").RulesById("unifiedRoleManagementPolicyRule-id").Patch(context.Background(), requestBody, nil)


```