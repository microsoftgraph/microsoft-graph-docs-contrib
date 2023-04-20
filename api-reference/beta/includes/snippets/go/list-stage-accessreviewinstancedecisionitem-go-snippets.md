---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").StagesById("accessReviewStage-id").Decisions().Get(context.Background(), nil)


```