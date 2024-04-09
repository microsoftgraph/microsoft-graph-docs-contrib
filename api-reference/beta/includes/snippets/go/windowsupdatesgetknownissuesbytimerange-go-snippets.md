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



daysInPast := int32(1)
microsoftGraphWindowsUpdatesGetKnownIssuesByTimeRange, err := graphClient.Admin().Windows().Updates().Products().ByProductId("product-id").MicrosoftGraphWindowsUpdatesGetKnownIssuesByTimeRangeWithDaysInPastWithIncludeAllActive(&daysInPast, &includeAllActive).GetAsGetKnownIssuesByTimeRangeWithDaysInPastGetResponse(context.Background(), nil)


```