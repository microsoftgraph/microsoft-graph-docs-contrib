---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessReview()
displayName := "TestReview new name"
requestBody.SetDisplayName(&displayName) 

accessReviews, err := graphClient.AccessReviews().ByAccessReviewId("accessReview-id").Patch(context.Background(), requestBody, nil)


```