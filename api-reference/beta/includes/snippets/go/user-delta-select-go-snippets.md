---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DeltaRequestBuilderGetQueryParameters{
	Select: "displayName,jobTitle,mobilePhone",
}
options := &msgraphsdk.DeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Users().Delta()().GetWithRequestConfigurationAndResponseHandler(options, nil)


```