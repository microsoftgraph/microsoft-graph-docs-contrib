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



reviewers, err := graphClient.AccessReviews().ByAccessReviewId("accessReview-id").Reviewers().Get(context.Background(), nil)


```