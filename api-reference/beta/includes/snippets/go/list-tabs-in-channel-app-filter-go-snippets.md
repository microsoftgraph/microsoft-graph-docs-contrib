---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TabsRequestBuilderGetQueryParameters{
	Expand: "teamsApp",
	Filter: "teamsApp/id%20eq%20'com.microsoft.teamspace.tab.planner'",
}
options := &msgraphsdk.TabsRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
channelId := "channel-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).Tabs().Get(options)


```