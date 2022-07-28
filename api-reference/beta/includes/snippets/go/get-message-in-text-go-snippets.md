---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "outlook.body-content-type=\"text\"",
}
requestParameters := &graphconfig.MessageRequestBuilderGetQueryParameters{
	Select: [] string {"subject","body","bodyPreview","uniqueBody"},
}
configuration := &graphconfig.MessageRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```