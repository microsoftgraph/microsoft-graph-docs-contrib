---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ChatMessageRequestBuilderGetQueryParameters{
	Skiptoken: "-FG3FPHv7HuyuazNLuy3eXlzQGbEjYLUsW9-pYkmXgn5KGsaOwrCoor2W23dGNNM1KtAX4AyvpFQNVsBgsEwUOX9lw8x9zDumgJy-C-UbjZLlZDQACyC9FyrVelZus9n.--rshdLwy_WBFJd8anPXJPbSUtUD7r3V4neB5tcrG58",
}
options := &msgraphsdk.ChatMessageRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
channelId := "channel-id"
chatMessageId := "chatMessage-id"
result, err := graphClient.TeamsById(&teamId).ChannelsById(&channelId).MessagesById(&chatMessageId).Get(options)


```