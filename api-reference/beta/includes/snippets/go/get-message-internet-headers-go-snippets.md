---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MessageRequestBuilderGetQueryParameters{
	Select: "internetMessageHeaders",
}
options := &msgraphsdk.MessageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```