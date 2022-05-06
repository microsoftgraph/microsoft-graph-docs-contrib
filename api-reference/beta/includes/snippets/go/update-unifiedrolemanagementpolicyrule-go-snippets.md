---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleManagementPolicyRule()
id := "Expiration_EndUser_Assignment"
requestBody.SetId(&id)
target := msgraphsdk.NewUnifiedRoleManagementPolicyRuleTarget()
requestBody.SetTarget(target)
caller := "EndUser"
target.SetCaller(&caller)
target.SetOperations( []String {
	"All",
}
level := "Assignment"
target.SetLevel(&level)
target.SetInheritableSettings( []string {
}
target.SetEnforcedSettings( []string {
}
target.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
	"isExpirationRequired": true,
	"maximumDuration": "PT1H45M",
}
options := &msgraphsdk.UnifiedRoleManagementPolicyRuleRequestBuilderPatchOptions{
	Body: requestBody,
}
unifiedRoleManagementPolicyId := "unifiedRoleManagementPolicy-id"
unifiedRoleManagementPolicyRuleId := "unifiedRoleManagementPolicyRule-id"
graphClient.Policies().RoleManagementPoliciesById(&unifiedRoleManagementPolicyId).RulesById(&unifiedRoleManagementPolicyRuleId).Patch(options)


```