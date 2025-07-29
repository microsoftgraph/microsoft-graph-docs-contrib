---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)


requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphusers.PendingAccessReviewInstancesItemDecisionsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphusers.PendingAccessReviewInstancesItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
decisions, err := graphClient.Me().PendingAccessReviewInstances().ByAccessReviewInstanceId("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```