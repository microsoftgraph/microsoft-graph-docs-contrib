---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").ImpactedResources().ByImpactedResourceId("impactedResource-id").Reactivate().Post(context.Background(), nil)


```