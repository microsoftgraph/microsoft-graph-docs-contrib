---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "startsWith(subject,'All')"

requestParameters := &graphconfig.EventsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.EventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Calendar().Events().Get(context.Background(), configuration)


```