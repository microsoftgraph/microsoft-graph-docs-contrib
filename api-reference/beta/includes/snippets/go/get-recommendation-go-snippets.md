---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'"

requestParameters := &graphconfig.DirectoryRecommendationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"impactedResources"},
}
configuration := &graphconfig.DirectoryRecommendationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().Recommendations().Get(context.Background(), configuration)


```