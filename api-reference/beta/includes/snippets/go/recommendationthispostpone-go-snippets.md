---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Directory/Recommendations/Item/Postpone"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPostponePostRequestBody()
postponeUntilDateTime , err := time.Parse(time.RFC3339, "2023-02-01T02:53:00Z")
requestBody.SetPostponeUntilDateTime(&postponeUntilDateTime) 

result, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").Postpone().Post(context.Background(), requestBody, nil)


```