---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.SitesRequestBuilderGetQueryParameters{
	Search: "{query}",
}
configuration := &graphconfig.SitesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Sites().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```