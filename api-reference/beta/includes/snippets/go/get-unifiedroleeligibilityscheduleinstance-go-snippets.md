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



roleEligibilityScheduleInstances, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleInstances().ByUnifiedRoleEligibilityScheduleInstanceId("unifiedRoleEligibilityScheduleInstance-id").Get(context.Background(), nil)


```