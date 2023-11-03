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



requestFilter := "recommendationType eq 'turnOffPerUserMFA'"

requestParameters := &graphdirectory.DirectoryRecommendationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectory.DirectoryRecommendationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

recommendations, err := graphClient.Directory().Recommendations().Get(context.Background(), configuration)


```