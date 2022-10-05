---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.ApplicationsById("application-id").TokenIssuancePoliciesById("tokenIssuancePolicy-id").$ref().Delete(context.Background(), nil)


```