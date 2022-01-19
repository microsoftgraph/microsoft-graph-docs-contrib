---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RecoveryKeysRequestBuilderGetQueryParameters{
	Filter: "deviceId%20eq%20'1ab40ab2-32a8-4b00-b6b5-ba724e407de9'",
}
headers := map[string]string{
	"ocp-client-name": ""My Friendly Client""
	"ocp-client-version": ""1.2""
}
options := &msgraphsdk.RecoveryKeysRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.InformationProtection().Bitlocker().RecoveryKeys().Get(options)


```