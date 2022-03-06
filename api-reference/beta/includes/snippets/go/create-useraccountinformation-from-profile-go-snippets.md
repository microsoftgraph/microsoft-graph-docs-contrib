---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUserAccountInformation()
allowedAudiences := "organization"
requestBody.SetAllowedAudiences(&allowedAudiences)
countryCode := "NO"
requestBody.SetCountryCode(&countryCode)
options := &msgraphsdk.AccountRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Account().Post(options)


```