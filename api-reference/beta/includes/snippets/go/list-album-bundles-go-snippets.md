---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "bundle/album ne null"

requestParameters := &graphconfig.BundlesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.BundlesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drive().Bundles().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```