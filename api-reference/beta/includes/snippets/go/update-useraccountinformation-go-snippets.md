---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUserAccountInformation()
countryCode := "NO"
requestBody.SetCountryCode(&countryCode) 

result, err := graphClient.Me().Profile().AccountById("userAccountInformation-id").Patch(context.Background(), requestBody, nil)


```