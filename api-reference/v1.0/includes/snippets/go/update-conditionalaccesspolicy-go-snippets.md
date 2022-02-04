---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConditionalAccessPolicy()
conditions := msgraphsdk.NewConditionalAccessConditionSet()
requestBody.SetConditions(conditions)
conditions.SetSignInRiskLevels( []RiskLevel {
	"high",
	"medium",
	"low",
}
options := &msgraphsdk.ConditionalAccessPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
conditionalAccessPolicyId := "conditionalAccessPolicy-id"
graphClient.Identity().ConditionalAccess().PoliciesById(&conditionalAccessPolicyId).Patch(options)


```