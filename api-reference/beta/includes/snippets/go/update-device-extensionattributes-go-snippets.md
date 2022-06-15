---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDevice()
extensionAttributes := msgraphsdk.NewOnPremisesExtensionAttributes()
requestBody.SetExtensionAttributes(extensionAttributes)
extensionAttribute1 := "BYOD-Device"
extensionAttributes.SetExtensionAttribute1(&extensionAttribute1)
deviceId := "device-id"
graphClient.DevicesById(&deviceId).Patch(requestBody)


```