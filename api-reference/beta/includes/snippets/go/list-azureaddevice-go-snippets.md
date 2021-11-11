---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.UpdatableAssetsRequestBuilderGetQueryParameters{
	Filter: "isof('microsoft.graph.windowsUpdates.azureADDevice')",
}
options := &msgraphsdk.UpdatableAssetsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().Get(options)


```