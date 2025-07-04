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


requestStartDateTime := "2019-04-08T09:00:00.0000000"
requestEndDateTime := "2019-04-30T09:00:00.0000000"

requestParameters := &graphusers.EventsItemInstancesRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
	Select: [] string {"subject","bodyPreview","seriesMasterId","type","recurrence","start","end"},
}
configuration := &graphusers.EventsItemInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
instances, err := graphClient.Me().Events().ByEventId("event-id").Instances().Get(context.Background(), configuration)


```