---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAttachment()
name := "Personal pictures"
requestBody.SetName(&name)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.referenceAttachment",
	"sourceUrl": "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	"providerType": "oneDriveConsumer",
	"permission": "Edit",
	"isFolder": "True",
}
options := &msgraphsdk.AttachmentsRequestBuilderPostOptions{
	Body: requestBody,
}
eventId := "event-id"
result, err := graphClient.Me().EventsById(&eventId).Attachments().Post(options)


```