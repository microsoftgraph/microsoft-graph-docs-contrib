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



roleDefinitions, err := graphClient.RoleManagement().EntitlementManagement().RoleDefinitions().ByUnifiedRoleDefinitionId("unifiedRoleDefinition-id").Get(context.Background(), nil)


```