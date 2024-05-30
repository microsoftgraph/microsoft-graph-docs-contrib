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
userId := "{userId}"
startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
getUserArchivedPrintJobs, err := graphClient.Reports().GetUserArchivedPrintJobsWithUserIdWithStartDateTimeWithEndDateTime(&userId, &startDateTime, &endDateTime).GetAsGetUserArchivedPrintJobsWithUserIdWithStartDateTimeWithEndDateTimeGetResponse(context.Background(), nil)


```