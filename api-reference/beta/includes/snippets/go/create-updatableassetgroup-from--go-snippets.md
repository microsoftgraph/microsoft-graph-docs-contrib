---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUpdatableAsset()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
}
result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().Post(requestBody)


```