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



roleScheduleInstances, err := graphClient.RoleManagement().Directory().RoleScheduleInstancesWithDirectoryScopeIdWithAppScopeIdWithPrincipalIdWithRoleDefinitionId(&directoryScopeId, &appScopeId, &principalId, &roleDefinitionId).GetAsRoleScheduleInstancesGetResponse(context.Background(), nil)


```