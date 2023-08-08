---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestSkip := int32(20)

requestParameters := &graphusers.ItemEventsRequestBuilderGetQueryParameters{
	Orderby: [] string {"createdDateTime"},
	Skip: &requestSkip,
}
configuration := &graphusers.ItemEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

events, err := graphClient.Me().Events().Get(context.Background(), configuration)


```