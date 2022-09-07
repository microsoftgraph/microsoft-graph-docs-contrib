---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(10)

requestParameters := &graphconfig.AttributeSetsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.AttributeSetsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().AttributeSets().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```