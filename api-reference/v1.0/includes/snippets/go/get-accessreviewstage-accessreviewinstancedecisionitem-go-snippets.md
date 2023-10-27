---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentitygovernance.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemStageItemDecisionItemRequestBuilderGetQueryParameters{
	Select: [] string {"accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target"},
}
configuration := &graphidentitygovernance.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemStageItemDecisionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

decisions, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").Stages().ByAccessReviewStageId("accessReviewStage-id").Decisions().ByAccessReviewInstanceDecisionItemId("accessReviewInstanceDecisionItem-id").Get(context.Background(), configuration)


```