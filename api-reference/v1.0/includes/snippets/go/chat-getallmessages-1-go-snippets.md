---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.GetAllMessagesRequestBuilderGetQueryParameters{
	Top: 2,
}
options := &msgraphsdk.GetAllMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Chats().GetAllMessages()(user-id).GetWithRequestConfigurationAndResponseHandler(options, nil)


```