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

requestParameters := &graphusers.ItemPendingAccessReviewInstancesRequestBuilderGetQueryParameters{
	Expand: [] string {"definition"},
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphusers.ItemPendingAccessReviewInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().PendingAccessReviewInstances().Get(context.Background(), configuration)


```