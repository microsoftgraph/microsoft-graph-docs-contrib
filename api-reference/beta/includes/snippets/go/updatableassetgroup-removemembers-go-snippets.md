---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAssetsRequestBody()
requestBody.SetAssets( []UpdatableAsset {
	msgraphsdk.NewUpdatableAsset(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
		"id": "String (identifier)",
	}
}
updatableAssetId := "updatableAsset-id"
graphClient.Admin().Windows().Updates().UpdatableAssetsById(&updatableAssetId).RemoveMembers(updatableAsset-id).Post(requestBody)


```