---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.FilesRequestBuilderGetQueryParameters{
	Top: 5,
}
configuration := &graphconfig.FilesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").ReviewSetsById("ediscoveryReviewSet-id").Files().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```