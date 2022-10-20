---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.EventsRequestBuilderGetQueryParameters{
	Filter: "startsWith(subject,'All')",
}
configuration := &graphconfig.EventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Calendar().Events().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```