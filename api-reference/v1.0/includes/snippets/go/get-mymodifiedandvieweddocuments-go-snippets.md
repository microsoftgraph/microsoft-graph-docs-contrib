---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UsedRequestBuilderGetQueryParameters{
	Orderby: [] string {"LastUsed/LastAccessedDateTime desc"},
}
configuration := &graphconfig.UsedRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Insights().Used().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```