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

result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByDefinitionId("accessReviewScheduleDefinition-id").Instances().ByInstanceId("accessReviewInstance-id").Stages().ByStageId("accessReviewStage-id").Decisions().ByDecisionId("accessReviewInstanceDecisionItem-id").Get(context.Background(), configuration)


```