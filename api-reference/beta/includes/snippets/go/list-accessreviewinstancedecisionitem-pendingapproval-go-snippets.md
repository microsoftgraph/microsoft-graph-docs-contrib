---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphusers.ItemPendingAccessReviewInstanceItemDecisionsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphusers.ItemPendingAccessReviewInstanceItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().PendingAccessReviewInstances().ByPendingAccessReviewInstanceId("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```