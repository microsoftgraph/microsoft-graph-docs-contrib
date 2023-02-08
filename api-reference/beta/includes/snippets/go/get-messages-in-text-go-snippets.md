---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.body-content-type=\"text\"")

requestParameters := &graphconfig.MeMessagesRequestBuilderGetQueryParameters{
	Select: [] string {"subject","body","bodyPreview","uniqueBody"},
}
configuration := &graphconfig.MeMessagesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```