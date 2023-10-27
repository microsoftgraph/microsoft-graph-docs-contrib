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



roleEligibilityScheduleRequests, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleRequests().ByUnifiedRoleEligibilityScheduleRequestId("unifiedRoleEligibilityScheduleRequest-id").Get(context.Background(), nil)


```