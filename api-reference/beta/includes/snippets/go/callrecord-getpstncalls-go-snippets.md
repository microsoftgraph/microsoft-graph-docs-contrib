---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.Communications().CallRecords().MicrosoftGraphCallRecordsGetPstnCalls(fromDateTime={fromDateTime},toDateTime={toDateTime})().Get(context.Background(), nil)


```