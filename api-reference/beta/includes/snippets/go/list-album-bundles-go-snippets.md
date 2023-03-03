---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "bundle/album ne null"

requestParameters := &graphconfig.DriveBundlesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.DriveBundlesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drive().Bundles().Get(context.Background(), configuration)


```