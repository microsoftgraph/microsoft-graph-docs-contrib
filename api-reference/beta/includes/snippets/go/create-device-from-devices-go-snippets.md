---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDevice()
accountEnabled := true
requestBody.SetAccountEnabled(&accountEnabled)
requestBody.SetAlternativeSecurityIds( []AlternativeSecurityId {
	msgraphsdk.NewAlternativeSecurityId(),
	SetAdditionalData(map[string]interface{}{
		"type": ,
		"identityProvider": "identityProvider-value",
		"key": "base64Y3YxN2E1MWFlYw==",
	}
}
approximateLastSignInDateTime, err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetApproximateLastSignInDateTime(&approximateLastSignInDateTime)
deviceId := "deviceId-value"
requestBody.SetDeviceId(&deviceId)
deviceMetadata := "deviceMetadata-value"
requestBody.SetDeviceMetadata(&deviceMetadata)
deviceVersion := int32(99)
requestBody.SetDeviceVersion(&deviceVersion)
options := &msgraphsdk.DevicesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Devices().Post(options)


```