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



historyDefinitions, err := graphClient.IdentityGovernance().AccessReviews().HistoryDefinitions().ByAccessReviewHistoryDefinitionId("accessReviewHistoryDefinition-id").Get(context.Background(), nil)


```