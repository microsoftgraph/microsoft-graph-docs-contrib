---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Directory/Recommendations/Item/ImpactedResources/Item/Postpone"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPostponePostRequestBody()
postponeUntilDateTime , err := time.Parse(time.RFC3339, "2023-03-01T09:40:39.0420371Z")
requestBody.SetPostponeUntilDateTime(&postponeUntilDateTime) 

result, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").ImpactedResources().ByImpactedResourceId("impactedResource-id").Postpone().Post(context.Background(), requestBody, nil)


```