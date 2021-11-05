---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewDevice()
accountEnabled := false
requestBody.SetAccountEnabled(&accountEnabled)
requestBody.SetAlternativeSecurityIds( []AlternativeSecurityId {
	msgraphsdk.NewAlternativeSecurityId(),
	SetAdditionalData(map[string]interface{}{
		"type": ,
		"key": "base64Y3YxN2E1MWFlYw==",
	}
}
deviceId := "4c299165-6e8f-4b45-a5ba-c5d250a707ff"
requestBody.SetDeviceId(&deviceId)
displayName := "Test device"
requestBody.SetDisplayName(&displayName)
operatingSystem := "linux"
requestBody.SetOperatingSystem(&operatingSystem)
operatingSystemVersion := "1"
requestBody.SetOperatingSystemVersion(&operatingSystemVersion)
options := &msgraphsdk.DevicesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Devices().Post(options);


```