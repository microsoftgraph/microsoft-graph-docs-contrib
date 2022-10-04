---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(5)

requestParameters := &graphconfig.FilesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.FilesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").ReviewSetsById("ediscoveryReviewSet-id").Files().Get(context.Background(), configuration)


```