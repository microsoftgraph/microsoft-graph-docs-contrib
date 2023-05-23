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



result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().ByRoleAssignmentId("unifiedRoleAssignmentMultiple-id").Get(context.Background(), nil)


```