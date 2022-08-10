---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UpdatableAssetsRequestBuilderGetQueryParameters{
	Filter: "isof('microsoft.graph.windowsUpdates.updatableAssetGroup')",
}
configuration := &graphconfig.UpdatableAssetsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```