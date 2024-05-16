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
daysInPast := int32(1)
microsoftGraphWindowsUpdatesGetKnownIssuesByTimeRange, err := graphClient.Admin().Windows().Updates().Products().ByProductId("product-id").MicrosoftGraphWindowsUpdatesGetKnownIssuesByTimeRangeWithDaysInPastWithIncludeAllActive(&daysInPast, &includeAllActive).GetAsGetKnownIssuesByTimeRangeWithDaysInPastGetResponse(context.Background(), nil)


```