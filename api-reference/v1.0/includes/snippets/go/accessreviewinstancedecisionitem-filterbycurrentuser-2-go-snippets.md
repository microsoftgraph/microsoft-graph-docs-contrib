---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.AccessReviewsDefinitionsItemInstancesItemStagesItemDecisionsFilterByCurrentUserWithOnRequestBuilderGetQueryParameters{
	Select: [] string {"accessReviewId","reviewedDateTime","decision","justification","recommendation","reviewedBy","target"},
}
configuration := &graphidentitygovernance.AccessReviewsDefinitionsItemInstancesItemStagesItemDecisionsFilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
on := "reviewer"
filterByCurrentUser, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").Stages().ByAccessReviewStageId("accessReviewStage-id").Decisions().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), configuration)


```