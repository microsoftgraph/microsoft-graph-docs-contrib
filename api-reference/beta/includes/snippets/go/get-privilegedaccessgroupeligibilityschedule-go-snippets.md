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



eligibilitySchedules, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilitySchedules().ByPrivilegedAccessGroupEligibilityScheduleId("privilegedAccessGroupEligibilitySchedule-id").Get(context.Background(), nil)


```