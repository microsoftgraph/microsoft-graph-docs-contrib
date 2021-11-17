---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewUnifiedRoleManagementPolicyRule()
target := msgraphsdk.NewUnifiedRoleManagementPolicyRuleTarget()
requestBody.SetTarget(target)
target.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
}
options := &msgraphsdk.UnifiedRoleManagementPolicyRuleRequestBuilderPatchOptions{
	Body: requestBody,
}
unifiedRoleManagementPolicyId := "unifiedRoleManagementPolicy-id"
unifiedRoleManagementPolicyRuleId := "unifiedRoleManagementPolicyRule-id"
graphClient.Policies().RoleManagementPoliciesById(&unifiedRoleManagementPolicyId).RulesById(&unifiedRoleManagementPolicyRuleId).Patch(options)


```