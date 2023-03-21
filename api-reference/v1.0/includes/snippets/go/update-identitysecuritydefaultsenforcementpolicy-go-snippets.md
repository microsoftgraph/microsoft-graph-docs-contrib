---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIdentitySecurityDefaultsEnforcementPolicy()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

result, err := graphClient.Policies().IdentitySecurityDefaultsEnforcementPolicy().Patch(context.Background(), requestBody, nil)


```