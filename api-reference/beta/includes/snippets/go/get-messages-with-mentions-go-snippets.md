---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MessagesRequestBuilderGetQueryParameters{
	Filter: "MentionsPreview/IsMentioned eq true",
	Select: [] string {"Subject","Sender","ReceivedDateTime","MentionsPreview"},
}
configuration := &graphconfig.MessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```