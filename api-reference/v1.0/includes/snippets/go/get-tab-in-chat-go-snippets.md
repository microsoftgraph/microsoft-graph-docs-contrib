---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TeamsTabRequestBuilderGetQueryParameters{
	Expand: "teamsApp",
}
options := &msgraphsdk.TeamsTabRequestBuilderGetOptions{
	Q: requestParameters,
}
chatId := "chat-id"
teamsTabId := "teamsTab-id"
result, err := graphClient.ChatsById(&chatId).TabsById(&teamsTabId).Get(options)


```