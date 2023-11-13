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



fromDateTime , err := time.Parse(time.RFC3339, "{fromDateTime}")
toDateTime , err := time.Parse(time.RFC3339, "{toDateTime}")
microsoftGraphCallRecordsGetPstnCalls, err := graphClient.Communications().CallRecords().MicrosoftGraphCallRecordsGetPstnCallsWithFromDateTimeWithToDateTime(&fromDateTime, &toDateTime).Get(context.Background(), nil)


```