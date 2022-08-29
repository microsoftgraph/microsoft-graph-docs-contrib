---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "members/any"

requestParameters := &graphconfig.ChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"members"},
	Filter: &requestFilter,
}
configuration := &graphconfig.ChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").Chats().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```