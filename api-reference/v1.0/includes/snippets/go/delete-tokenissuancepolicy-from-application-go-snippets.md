---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

applicationId := "application-id"
tokenIssuancePolicyId := "tokenIssuancePolicy-id"
graphClient.ApplicationsById(&applicationId).TokenIssuancePoliciesById(&tokenIssuancePolicyId).$ref().Delete()


```