---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.GetAllMessagesRequestBuilderGetQueryParameters{
	Top: 2,
}
configuration := &graphconfig.GetAllMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").Chats().GetAllMessages().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```