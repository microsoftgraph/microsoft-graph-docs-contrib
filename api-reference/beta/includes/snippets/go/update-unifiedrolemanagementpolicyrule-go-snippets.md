---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnifiedRoleManagementPolicyRule()
"@odata.type" := "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule"
requestBody.Set"@odata.type"(&"@odata.type") 
id := "Expiration_EndUser_Assignment"
requestBody.SetId(&id) 
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
"@odata.type" := "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
target.Set"@odata.type"(&"@odata.type") 
caller := "EndUser"
target.SetCaller(&caller) 
operations := []string {
	"All",

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
	isExpirationRequired := true
requestBody.SetIsExpirationRequired(&isExpirationRequired) 
	"maximumDuration" : "PT1H45M", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Policies().RoleManagementPoliciesById("unifiedRoleManagementPolicy-id").RulesById("unifiedRoleManagementPolicyRule-id").Patch(requestBody)


```