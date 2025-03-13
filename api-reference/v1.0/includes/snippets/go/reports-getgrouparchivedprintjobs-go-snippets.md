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
groupId := "{groupId}"
startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
getGroupArchivedPrintJobs, err := graphClient.Reports().GetGroupArchivedPrintJobsWithGroupIdWithStartDateTimeWithEndDateTime(&groupId, &startDateTime, &endDateTime).GetAsGetGroupArchivedPrintJobsWithGroupIdWithStartDateTimeWithEndDateTimeGetResponse(context.Background(), nil)


```