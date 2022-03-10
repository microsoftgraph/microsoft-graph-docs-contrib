---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewClaimsMappingPolicy()
displayName := "UpdateClaimsPolicy"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.ClaimsMappingPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
claimsMappingPolicyId := "claimsMappingPolicy-id"
result, err := graphClient.Policies().ClaimsMappingPoliciesById(&claimsMappingPolicyId).Patch(options)


```