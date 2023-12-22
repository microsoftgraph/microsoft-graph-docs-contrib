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


requestBody := graphmodels.NewAccessReviewReviewer()
id := "006111db-0810-4494-a6df-904d368bd81b"
requestBody.SetId(&id) 

reviewers, err := graphClient.AccessReviews().ByAccessReviewId("accessReview-id").Reviewers().Post(context.Background(), requestBody, nil)


```