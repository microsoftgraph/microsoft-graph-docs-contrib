---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphidentitygovernance.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemDecisionsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphidentitygovernance.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

decisions, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```