---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Identity().ConditionalAccess().AuthenticationStrengths().PoliciesById("authenticationStrengthPolicy-id").CombinationConfigurationsById("authenticationCombinationConfiguration-id").Delete(context.Background(), nil)


```