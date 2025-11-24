---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)


// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
aggregatedBy := "transactions"
microsoftGraphNetworkaccessGetApplicationUsageAnalytics, err := graphClient.NetworkAccess().Reports().MicrosoftGraphNetworkaccessGetApplicationUsageAnalyticsWithStartDateTimeWithEndDateTimeWithAggregatedBy(&startDateTime, &endDateTime, &aggregatedBy).GetAsGetApplicationUsageAnalyticsWithStartDateTimeWithEndDateTimeWithAggregatedByGetResponse(context.Background(), nil)


```