---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPhoneAuthenticationMethod()
phoneNumber := "+1 2065555555"
requestBody.SetPhoneNumber(&phoneNumber)
phoneType := "mobile"
requestBody.SetPhoneType(&phoneType)
options := &msgraphsdk.PhoneMethodsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Authentication().PhoneMethods().Post(options)


```