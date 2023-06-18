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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentitygovernance.IdentityGovernanceAccessReviewsDecisionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"instance($expand=definition)"},
}
configuration := &graphidentitygovernance.IdentityGovernanceAccessReviewsDecisionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AccessReviews().Decisions().ByDecisionId("accessReviewInstanceDecisionItem-id").Get(context.Background(), configuration)


```