---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessReviewsRequestBuilderGetQueryParameters{
	Filter: "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'",
	Top: 100,
	Skip: 0,
}
configuration := &graphconfig.AccessReviewsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AccessReviews().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```