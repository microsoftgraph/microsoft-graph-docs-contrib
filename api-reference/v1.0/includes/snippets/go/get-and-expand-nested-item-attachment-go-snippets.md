---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.MeMessageItemAttachmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.itemattachment/item"},
}
configuration := &graphconfig.MeMessageItemAttachmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").AttachmentsById("attachment-id").Get(context.Background(), configuration)


```