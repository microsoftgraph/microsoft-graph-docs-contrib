---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExportPersonalDataPostRequestBody()
storageLocation := "storageLocation-value"
requestBody.SetStorageLocation(&storageLocation) 

graphClient.UsersById("user-id").ExportPersonalData().Post(context.Background(), requestBody, nil)


```