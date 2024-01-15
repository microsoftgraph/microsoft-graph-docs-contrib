---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectory.NewPostponePostRequestBody()
postponeUntilDateTime , err := time.Parse(time.RFC3339, "2023-02-01T02:53:00Z")
requestBody.SetPostponeUntilDateTime(&postponeUntilDateTime) 

postpone, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").Postpone().Post(context.Background(), requestBody, nil)


```