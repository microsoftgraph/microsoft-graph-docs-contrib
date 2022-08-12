---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"members"},
}
configuration := &graphconfig.ChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").Chats().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```