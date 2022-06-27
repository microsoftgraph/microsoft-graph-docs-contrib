---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AttachmentRequestBuilderGetQueryParameters{
	Expand: "microsoft.graph.itemattachment/item",
}
options := &msgraphsdk.AttachmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
messageId := "message-id"
attachmentId := "attachment-id"
result, err := graphClient.Me().MessagesById(&messageId).AttachmentsById(&attachmentId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```