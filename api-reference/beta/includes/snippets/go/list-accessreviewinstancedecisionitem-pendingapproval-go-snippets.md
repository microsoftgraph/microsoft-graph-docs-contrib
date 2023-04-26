---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphconfig.ItemPendingAccessReviewInstanceItemDecisionsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphconfig.ItemPendingAccessReviewInstanceItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().PendingAccessReviewInstances().ByPendingAccessReviewInstanceId("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```