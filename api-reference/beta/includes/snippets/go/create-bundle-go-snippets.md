---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDriveItem()
name := "Just some files"
requestBody.SetName(&name)
bundle := msgraphsdk.NewBundle()
requestBody.SetBundle(bundle)
requestBody.SetChildren( []DriveItem {
	msgraphsdk.NewDriveItem(),
	SetAdditionalData(map[string]interface{}{
		"id": "1234asdf",
	}
	msgraphsdk.NewDriveItem(),
	SetAdditionalData(map[string]interface{}{
		"id": "1234qwerty",
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