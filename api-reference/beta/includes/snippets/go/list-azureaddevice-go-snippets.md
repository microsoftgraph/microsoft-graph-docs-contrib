---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "isof('microsoft.graph.windowsUpdates.azureADDevice')"

requestParameters := &graphconfig.AdminWindowsUpdatesUpdatableAssetsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.AdminWindowsUpdatesUpdatableAssetsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().Get(context.Background(), configuration)


```