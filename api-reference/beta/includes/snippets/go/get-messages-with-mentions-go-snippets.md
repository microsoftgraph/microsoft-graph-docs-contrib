---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MessagesRequestBuilderGetQueryParameters{
	Filter: "MentionsPreview/IsMentioned%20eq%20true",
	Select: "Subject,Sender,ReceivedDateTime,MentionsPreview",
}
options := &msgraphsdk.MessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Me().Messages().GetWithRequestConfigurationAndResponseHandler(options, nil)


```