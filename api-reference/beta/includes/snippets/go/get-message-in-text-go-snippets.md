---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MessageRequestBuilderGetQueryParameters{
	Select: "subject,body,bodyPreview,uniqueBody",
}
headers := map[string]string{
	"Prefer": "outlook.body-content-type="text""
}
options := &msgraphsdk.MessageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
	Headers: headers,
}
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```