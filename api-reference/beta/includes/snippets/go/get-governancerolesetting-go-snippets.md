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



roleSettings, err := graphClient.PrivilegedAccess().ByPrivilegedAccessId("privilegedAccess-id").RoleSettings().ByGovernanceRoleSettingId("governanceRoleSetting-id").Get(context.Background(), nil)


```