---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ocp-client-name": ""My Friendly Client""
	"ocp-client-version": ""1.2""
}
options := &msgraphsdk.RecoveryKeysRequestBuilderGetOptions{
	H: headers,
}
result, err := graphClient.InformationProtection().Bitlocker().RecoveryKeys().Get(options)


```