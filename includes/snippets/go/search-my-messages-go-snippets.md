---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestSearch := "\"pizza\""

requestParameters := &graphconfig.MeMessagesRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphconfig.MeMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```