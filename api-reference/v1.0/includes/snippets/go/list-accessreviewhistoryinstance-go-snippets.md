---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



instances, err := graphClient.IdentityGovernance().AccessReviews().HistoryDefinitions().ByAccessReviewHistoryDefinitionId("accessReviewHistoryDefinition-id").Instances().Get(context.Background(), nil)


```