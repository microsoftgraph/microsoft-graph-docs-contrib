---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "outlook.body-content-type=\"text\"",
}
requestParameters := &graphconfig.EventsRequestBuilderGetQueryParameters{
	Select: [] string {"subject","body","bodyPreview"},
}
configuration := &graphconfig.EventsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Events().Get(context.Background(), configuration)


```