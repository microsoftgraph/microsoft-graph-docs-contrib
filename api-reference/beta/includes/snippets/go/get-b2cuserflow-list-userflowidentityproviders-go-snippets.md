---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserFlowIdentityProviders().Get(context.Background(), nil)


```