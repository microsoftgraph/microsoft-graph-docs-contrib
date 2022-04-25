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
options := &msgraphsdk.BitlockerRecoveryKeyRequestBuilderGetOptions{
	H: headers,
}
bitlockerRecoveryKeyId := "bitlockerRecoveryKey-id"
result, err := graphClient.InformationProtection().Bitlocker().RecoveryKeysById(&bitlockerRecoveryKeyId).Get(options)


```