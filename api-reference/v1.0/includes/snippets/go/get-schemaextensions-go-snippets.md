---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SchemaExtensionsRequestBuilderGetQueryParameters{
	Filter: "id%20eq%20'graphlearn_test'",
}
options := &msgraphsdk.SchemaExtensionsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.SchemaExtensions().Get(options)


```