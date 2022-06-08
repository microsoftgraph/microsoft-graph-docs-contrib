---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAttachment()
name := "name-value"
requestBody.SetName(&name)
contentType := "contentType-value"
requestBody.SetContentType(&contentType)
isInline := false
requestBody.SetIsInline(&isInline)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#Microsoft.OutlookServices.FileAttachment",
	"contentLocation": "contentLocation-value",
	"contentBytes": "contentBytes-value",
}
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).Attachments().Post(requestBody)


```