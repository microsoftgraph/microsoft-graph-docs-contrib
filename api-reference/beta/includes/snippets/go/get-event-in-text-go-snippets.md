---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "outlook.body-content-type=\"text\"",
}
requestParameters := &graphconfig.EventRequestBuilderGetQueryParameters{
	Select: [] string {"subject","body","bodyPreview"},
}
configuration := &graphconfig.EventRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().EventsById("event-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```