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



inclusiveIntervalStartDateTime , err := time.Parse(time.RFC3339, "{inclusiveIntervalStartDateTime}")
exclusiveIntervalEndDateTime , err := time.Parse(time.RFC3339, "{exclusiveIntervalEndDateTime}")
getMetricsForConditionalAccessCompliantDevicesSignInSuccess, err := graphClient.Reports().ServiceActivity().GetMetricsForConditionalAccessCompliantDevicesSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutes(&inclusiveIntervalStartDateTime, &exclusiveIntervalEndDateTime, &aggregationIntervalInMinutes).Get(context.Background(), nil)


```