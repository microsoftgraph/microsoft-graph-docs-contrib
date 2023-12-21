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



startDateTime := "{startDateTime}"
endDateTime := "{endDateTime}"
interval := "{interval}"
getActivitiesByInterval, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").GetActivitiesByIntervalWithStartDateTimeWithEndDateTimeWithInterval(&startDateTime, &endDateTime, &interval).Get(context.Background(), nil)


```