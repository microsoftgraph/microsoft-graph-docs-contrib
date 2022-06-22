---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.BundlesRequestBuilderGetQueryParameters{
	Filter: "bundle/album%20ne%20null",
}
options := &msgraphsdk.BundlesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Drive().Bundles().GetWithRequestConfigurationAndResponseHandler(options, nil)


```