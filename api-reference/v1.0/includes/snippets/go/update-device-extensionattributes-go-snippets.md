---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDevice()
requestBody.SetAdditionalData(map[string]interface{}{
}
deviceId := "device-id"
graphClient.DevicesById(&deviceId).Patch(requestBody)


```