---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(10)

requestParameters := &graphconfig.DirectoryAttributeSetsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.DirectoryAttributeSetsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().AttributeSets().Get(context.Background(), configuration)


```