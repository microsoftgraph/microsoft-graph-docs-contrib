---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAttachment()
name := "menu.txt"
requestBody.SetName(&name)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.fileAttachment",
	"contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk=",
}
options := &msgraphsdk.AttachmentsRequestBuilderPostOptions{
	Body: requestBody,
}
outlookTaskId := "outlookTask-id"
result, err := graphClient.Me().Outlook().TasksById(&outlookTaskId).Attachments().Post(options)


```