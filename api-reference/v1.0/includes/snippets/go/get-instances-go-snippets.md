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



requestStartDateTime := "2019-04-08T09:00:00.0000000"
requestEndDateTime := "2019-04-30T09:00:00.0000000"

requestParameters := &graphusers.ItemEventItemInstancesRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
	Select: [] string {"subject","bodyPreview","seriesMasterId","type","recurrence","start","end"},
}
configuration := &graphusers.ItemEventItemInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

instances, err := graphClient.Me().Events().ByEventId("event-id").Instances().Get(context.Background(), configuration)


```