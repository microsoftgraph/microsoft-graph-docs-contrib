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



userId := "{userId}"
startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
getUserArchivedPrintJobs, err := graphClient.Reports().GetUserArchivedPrintJobsWithUserIdWithStartDateTimeWithEndDateTime(&userId, &startDateTime, &endDateTime).Get(context.Background(), nil)


```