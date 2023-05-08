---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.IdentityGovernanceAccessReviewsDecisionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"instance($expand=definition)"},
}
configuration := &graphconfig.IdentityGovernanceAccessReviewsDecisionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AccessReviews().Decisions().ByDecisionId("accessReviewInstanceDecisionItem-id").Get(context.Background(), configuration)


```