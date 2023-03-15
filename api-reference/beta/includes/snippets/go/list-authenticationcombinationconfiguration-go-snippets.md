---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Identity().ConditionalAccess().AuthenticationStrengths().PoliciesById("authenticationStrengthPolicy-id").CombinationConfigurations().Get(context.Background(), nil)


```