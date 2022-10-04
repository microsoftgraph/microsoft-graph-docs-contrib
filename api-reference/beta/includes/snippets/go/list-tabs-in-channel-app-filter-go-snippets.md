---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "teamsApp/id eq 'com.microsoft.teamspace.tab.planner'"

requestParameters := &graphconfig.TabsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
	Filter: &requestFilter,
}
configuration := &graphconfig.TabsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Tabs().Get(context.Background(), configuration)


```