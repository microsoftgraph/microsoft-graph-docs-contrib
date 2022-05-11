---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsedRequestBuilderGetQueryParameters{
	Orderby: "LastUsed/LastAccessedDateTime%20desc",
}
options := &msgraphsdk.UsedRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Me().Insights().Used().GetWithRequestConfigurationAndResponseHandler(options, nil)


```