---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.body-content-type=\"text\"")

requestParameters := &graphconfig.MeEventsRequestBuilderGetQueryParameters{
	Select: [] string {"subject","body","bodyPreview"},
}
configuration := &graphconfig.MeEventsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Events().Get(context.Background(), configuration)


```