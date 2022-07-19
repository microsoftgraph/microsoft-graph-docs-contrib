---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.SchemaExtensionsRequestBuilderGetQueryParameters{
	Filter: "id eq 'graphlearn_test'",
}
configuration := &graphconfig.SchemaExtensionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SchemaExtensions().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```