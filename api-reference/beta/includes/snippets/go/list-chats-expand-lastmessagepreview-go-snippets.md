---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ChatsRequestBuilderGetQueryParameters{
	Expand: "lastMessagePreview",
}
options := &msgraphsdk.ChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Chats().GetWithRequestConfigurationAndResponseHandler(options, nil)


```