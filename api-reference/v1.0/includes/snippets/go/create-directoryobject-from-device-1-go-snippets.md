---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/{id}",
}
options := &msgraphsdk.DirectoryObjectRequestBuilderPostOptions{
	Body: requestBody,
}
deviceId := "device-id"
directoryObjectId := "directoryObject-id"
graphClient.DevicesById(&deviceId).RegisteredOwnersById(&directoryObjectId).Post(options)


```