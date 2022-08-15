---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUserAccountInformation()
countryCode := "NO"
requestBody.SetCountryCode(&countryCode) 

graphClient.Me().Profile().AccountById("userAccountInformation-id").Patch(requestBody)


```