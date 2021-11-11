---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
updateCategory := "String"
requestBody.SetUpdateCategory(&updateCategory)
requestBody.SetAssets( []UpdatableAsset {
	msgraphsdk.NewUpdatableAsset(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
		"id": "String (identifier)",
	}
}
options := &msgraphsdk.UnenrollAssetsRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Admin().Windows().Updates().UpdatableAssets().UnenrollAssets().Post(options)


```