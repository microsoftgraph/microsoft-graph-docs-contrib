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



eligibilityScheduleInstances, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilityScheduleInstances().ByPrivilegedAccessGroupEligibilityScheduleInstanceId("privilegedAccessGroupEligibilityScheduleInstance-id").Get(context.Background(), nil)


```