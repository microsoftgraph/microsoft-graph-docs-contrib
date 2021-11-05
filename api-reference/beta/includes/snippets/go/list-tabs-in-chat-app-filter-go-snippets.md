---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.TabsRequestBuilderGetQueryParameters{
	Expand: "teamsApp",
	Filter: "teamsApp/id%20eq%20'com.microsoft.teamspace.tab.web'",
}
options := &msgraphsdk.TabsRequestBuilderGetOptions{
	Q: requestParameters,
}
chatId := "chat-id"
result, err := graphClient.ChatsById(&chatId).Tabs().Get(options);


```