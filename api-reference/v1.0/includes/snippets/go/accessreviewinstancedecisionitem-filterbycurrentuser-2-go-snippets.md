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


requestParameters := &graphidentitygovernance.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemStageItemDecisionsFilterByCurrentUser(on='{on}')RequestBuilderGetQueryParameters{
	Select: [] string {"accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target"},
}
configuration := &graphidentitygovernance.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemStageItemDecisionsFilterByCurrentUser(on='{on}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

filterByCurrentUser(on='{on}'), err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").Stages().ByAccessReviewStageId("accessReviewStage-id").Decisions().FilterByCurrentUser(on='{on}')().Get(context.Background(), configuration)


```