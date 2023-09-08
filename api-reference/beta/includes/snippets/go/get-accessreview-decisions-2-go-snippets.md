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



myDecisions, err := graphClient.AccessReviews().ByAccessReviewId("accessReview-id").MyDecisions().Get(context.Background(), nil)


```