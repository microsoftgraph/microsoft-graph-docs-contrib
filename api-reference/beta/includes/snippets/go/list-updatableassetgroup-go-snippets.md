---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "isof('microsoft.graph.windowsUpdates.updatableAssetGroup')"

requestParameters := &graphconfig.UpdatableAssetsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.UpdatableAssetsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```