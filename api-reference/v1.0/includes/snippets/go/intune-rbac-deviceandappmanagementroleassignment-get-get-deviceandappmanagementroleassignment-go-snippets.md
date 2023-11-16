---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



roleAssignments, err := graphClient.DeviceManagement().RoleAssignments().ByDeviceAndAppManagementRoleAssignmentId("deviceAndAppManagementRoleAssignment-id").Get(context.Background(), nil)


```