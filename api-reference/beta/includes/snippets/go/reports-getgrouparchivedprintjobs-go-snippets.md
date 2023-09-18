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



groupId := "{groupId}"
startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
getGroupArchivedPrintJobs, err := graphClient.Reports().GetGroupArchivedPrintJobsWithGroupIdWithStartDateTimeWithEndDateTime(&groupId, &startDateTime, &endDateTime).Get(context.Background(), nil)


```