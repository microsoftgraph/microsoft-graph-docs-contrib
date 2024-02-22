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



alertDefinitions, err := graphClient.IdentityGovernance().RoleManagementAlerts().AlertDefinitions().ByUnifiedRoleManagementAlertDefinitionId("unifiedRoleManagementAlertDefinition-id").Get(context.Background(), nil)


```