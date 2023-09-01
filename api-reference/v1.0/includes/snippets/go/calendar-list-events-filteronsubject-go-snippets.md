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



requestFilter := "startsWith(subject,'All')"

requestParameters := &graphusers.ItemCalendarEventsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemCalendarEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

events, err := graphClient.Me().Calendar().Events().Get(context.Background(), configuration)


```