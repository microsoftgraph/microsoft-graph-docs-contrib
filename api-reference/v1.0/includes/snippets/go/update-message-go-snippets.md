---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessage()
subject := "subject-value"
requestBody.SetSubject(&subject)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := ""
body.SetContentType(&contentType)
content := "content-value"
body.SetContent(&content)
inferenceClassification := "other"
requestBody.SetInferenceClassification(&inferenceClassification)
options := &msgraphsdk.MessageRequestBuilderPatchOptions{
	Body: requestBody,
}
messageId := "message-id"
graphClient.Me().MessagesById(&messageId).Patch(options)


```