---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

trustFrameworkPolicyId := "trustFrameworkPolicy-id"
graphClient.TrustFramework().PoliciesById(&trustFrameworkPolicyId).Delete(options)


```