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



fromDateTime , err := time.Parse(time.RFC3339, "{fromDateTime}")
toDateTime , err := time.Parse(time.RFC3339, "{toDateTime}")
microsoftGraphCallRecordsGetPstnBlockedUsersLog, err := graphClient.Communications().CallRecords().MicrosoftGraphCallRecordsGetPstnBlockedUsersLogWithFromDateTimeWithToDateTime(&fromDateTime, &toDateTime).GetAsGetPstnBlockedUsersLogWithFromDateTimeWithToDateTimeGetResponse(context.Background(), nil)


```