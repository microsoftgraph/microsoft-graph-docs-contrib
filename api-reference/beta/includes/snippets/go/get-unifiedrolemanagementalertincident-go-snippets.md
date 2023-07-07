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



result, err := graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByAlertId("unifiedRoleManagementAlert-id").AlertIncidents().ByAlertIncidentId("unifiedRoleManagementAlertIncident-id").Get(context.Background(), nil)


```