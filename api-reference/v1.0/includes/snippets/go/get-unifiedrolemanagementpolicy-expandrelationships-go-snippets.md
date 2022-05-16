---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UnifiedRoleManagementPolicyRequestBuilderGetQueryParameters{
	Expand: "effectiveRules,rules",
}
options := &msgraphsdk.UnifiedRoleManagementPolicyRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
unifiedRoleManagementPolicyId := "unifiedRoleManagementPolicy-id"
result, err := graphClient.Policies().RoleManagementPoliciesById(&unifiedRoleManagementPolicyId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```