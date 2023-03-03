---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "Subject eq 'welcome' and importance eq 'normal'"

requestParameters := &graphconfig.MeMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Orderby: [] string {"subject","importance","receivedDateTime desc"},
}
configuration := &graphconfig.MeMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```