---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)


requestApply := "groupby((resource/id, resource/displayName))"

requestParameters := &graphidentitygovernance.AccessReviewsDefinitionsItemInstancesItemDecisionsFilterByCurrentUserWithOnRequestBuilderGetQueryParameters{
	Apply: &requestApply,
}
configuration := &graphidentitygovernance.AccessReviewsDefinitionsItemInstancesItemDecisionsFilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
on := "reviewer"
filterByCurrentUser, err := graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").Decisions().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), configuration)


```