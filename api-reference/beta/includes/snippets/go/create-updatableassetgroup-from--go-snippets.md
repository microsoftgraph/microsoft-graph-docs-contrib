---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdatableAsset()
"@odata.type" := "#microsoft.graph.windowsUpdates.updatableAssetGroup"
requestBody.Set"@odata.type"(&"@odata.type") 

result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().Post(requestBody)


```