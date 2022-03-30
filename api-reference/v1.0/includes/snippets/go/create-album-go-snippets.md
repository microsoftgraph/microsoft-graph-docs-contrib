---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"name": "My Day at the Beach",
	"@microsoft.graph.conflictBehavior": "rename",
	"children":  []Object {
	}
}
options := &msgraphsdk.BundlesRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Drive().Bundles().Post(options)


```