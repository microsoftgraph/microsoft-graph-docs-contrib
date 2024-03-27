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



printerId := "{printerId}"
startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
getPrinterArchivedPrintJobs, err := graphClient.Reports().GetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTime(&printerId, &startDateTime, &endDateTime).GetAsGetPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTimeGetResponse(context.Background(), nil)


```