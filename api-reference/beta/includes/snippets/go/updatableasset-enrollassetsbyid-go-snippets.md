---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
updateCategory := "feature"
requestBody.SetUpdateCategory(&updateCategory)
memberEntityType := "#microsoft.graph.windowsUpdates.azureADDevice"
requestBody.SetMemberEntityType(&memberEntityType)
requestBody.SetIds( []String {
	"String",
	"String",
	"String",
}
options := &msgraphsdk.EnrollAssetsByIdRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Admin().Windows().Updates().UpdatableAssets().EnrollAssetsById().Post(options)


```