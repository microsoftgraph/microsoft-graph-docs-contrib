---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)


// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
startDateTime := "{startDateTime}"
endDateTime := "{endDateTime}"
interval := "{interval}"
getActivitiesByInterval, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").GetActivitiesByIntervalWithStartDateTimeWithEndDateTimeWithInterval(&startDateTime, &endDateTime, &interval).GetAsGetActivitiesByIntervalWithStartDateTimeWithEndDateTimeWithIntervalGetResponse(context.Background(), nil)


```