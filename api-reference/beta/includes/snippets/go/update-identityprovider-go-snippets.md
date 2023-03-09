---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIdentityProvider()
clientSecret := "1111111111111"
requestBody.SetClientSecret(&clientSecret) 

result, err := graphClient.IdentityProvidersById("identityProvider-id").Patch(context.Background(), requestBody, nil)


```