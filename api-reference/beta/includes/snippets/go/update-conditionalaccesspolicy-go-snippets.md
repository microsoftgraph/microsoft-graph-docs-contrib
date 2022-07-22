---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConditionalAccessPolicy()
conditions := graphmodels.NewConditionalAccessConditionSet()
signInRiskLevels := []graphmodels.RiskLevelable {
	"high",
	"medium",
	"low",

}
conditions.SetSignInRiskLevels(signInRiskLevels)
requestBody.SetConditions(conditions)

graphClient.Identity().ConditionalAccess().PoliciesById("conditionalAccessPolicy-id").Patch(requestBody)


```