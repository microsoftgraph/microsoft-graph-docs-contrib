---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewStorageLocationRequestBody()
storageLocation := "storageLocation-value"
requestBody.SetStorageLocation(&storageLocation)
options := &msgraphsdk.ExportPersonalDataRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
graphClient.UsersById(&userId).ExportPersonalData(user-id).Post(options)


```