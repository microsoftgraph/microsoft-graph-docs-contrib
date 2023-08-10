---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



microsoft.graph.callRecords.getDirectRoutingCalls(fromDateTime={fromDateTime},toDateTime={toDateTime}), err := graphClient.Communications().CallRecords().MicrosoftGraphCallRecordsGetDirectRoutingCalls(fromDateTime={fromDateTime},toDateTime={toDateTime})().Get(context.Background(), nil)


```