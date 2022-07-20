---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MessageRequestBuilderGetQueryParameters{
	Expand: [] string {"singleValueExtendedProperties($filter=id%20eq%20'String%20%7B66f5a359-4659-4830-9070-00047ec6ac6e%7D%20Name%20Color')"},
}
configuration := &graphconfig.MessageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```