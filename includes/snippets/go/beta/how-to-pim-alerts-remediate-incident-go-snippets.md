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



graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByUnifiedRoleManagementAlertId("unifiedRoleManagementAlert-id").AlertIncidents().ByUnifiedRoleManagementAlertIncidentId("unifiedRoleManagementAlertIncident-id").Remediate().Post(context.Background(), nil)


```