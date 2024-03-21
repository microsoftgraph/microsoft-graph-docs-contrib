---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'"

requestParameters := &graphdirectory.DirectoryRecommendationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"impactedResources"},
}
configuration := &graphdirectory.DirectoryRecommendationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

recommendations, err := graphClient.Directory().Recommendations().Get(context.Background(), configuration)


```