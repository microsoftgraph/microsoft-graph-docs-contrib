---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TeamsTabRequestBuilderGetQueryParameters{
	Expand: "teamsApp",
}
options := &msgraphsdk.TeamsTabRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
chatId := "chat-id"
teamsTabId := "teamsTab-id"
result, err := graphClient.ChatsById(&chatId).TabsById(&teamsTabId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```