---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ChatRequestBuilderGetQueryParameters{
	Top: 2,
}
options := &msgraphsdk.ChatRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
userId := "user-id"
chatId := "chat-id"
result, err := graphClient.UsersById(&userId).ChatsById(&chatId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```