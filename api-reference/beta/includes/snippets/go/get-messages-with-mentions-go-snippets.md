---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "MentionsPreview/IsMentioned eq true"

requestParameters := &graphconfig.MessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"Subject","Sender","ReceivedDateTime","MentionsPreview"},
}
configuration := &graphconfig.MessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```