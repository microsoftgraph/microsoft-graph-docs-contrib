---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ConditionalAccessTemplateRequestBuilderGetQueryParameters{
	Select: [] string {"summary"},
}
configuration := &graphconfig.ConditionalAccessTemplateRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Get(context.Background(), configuration)


```