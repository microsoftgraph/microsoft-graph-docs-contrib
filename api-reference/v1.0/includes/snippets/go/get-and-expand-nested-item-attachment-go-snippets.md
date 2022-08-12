---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AttachmentRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.itemattachment/item"},
}
configuration := &graphconfig.AttachmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").AttachmentsById("attachment-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```