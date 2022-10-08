---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAttachmentBase()
name := "smile"
requestBody.SetName(&name) 
contentType := "image/gif"
requestBody.SetContentType(&contentType) 
additionalData := map[string]interface{}{
	"contentBytes" : "a0b1c76de9f7=", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Todo().ListsById("todoTaskList-id").TasksById("todoTask-id").Attachments().Post(context.Background(), requestBody, nil)


```