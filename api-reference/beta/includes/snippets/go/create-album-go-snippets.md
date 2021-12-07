---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDriveItem()
name := "My Day at the Beach"
requestBody.SetName(&name)
bundle := msgraphsdk.NewBundle()
requestBody.SetBundle(bundle)
album := msgraphsdk.NewAlbum()
bundle.SetAlbum(album)
requestBody.SetChildren( []DriveItem {
	msgraphsdk.NewDriveItem(),
	SetAdditionalData(map[string]interface{}{
		"id": "1234asdf",
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@microsoft.graph.conflictBehavior": "rename",
}
options := &msgraphsdk.BundlesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Drive().Bundles().Post(options)


```