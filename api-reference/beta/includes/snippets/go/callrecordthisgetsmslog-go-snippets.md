---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



microsoft.graph.callRecords.getSmsLog(fromDateTime={fromDateTime},toDateTime={toDateTime}), err := graphClient.Communications().CallRecords().MicrosoftGraphCallRecordsGetSmsLog(fromDateTime={fromDateTime},toDateTime={toDateTime})().Get(context.Background(), nil)


```