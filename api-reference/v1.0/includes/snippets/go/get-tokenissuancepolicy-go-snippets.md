---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

tokenIssuancePolicyId := "tokenIssuancePolicy-id"
result, err := graphClient.Policies().TokenIssuancePoliciesById(&tokenIssuancePolicyId).Get(options)


```