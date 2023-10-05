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



graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByUnifiedRoleManagementAlertId("unifiedRoleManagementAlert-id").Refresh().Post(context.Background(), nil)


```