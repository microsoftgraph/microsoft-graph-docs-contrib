---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestSearch := "\"displayName:Browser\""

requestParameters := &graphconfig.ApplicationsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphconfig.ApplicationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Applications().Get(context.Background(), configuration)


```