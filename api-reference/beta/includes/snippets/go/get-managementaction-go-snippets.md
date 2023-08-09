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



managementActions, err := graphClient.TenantRelationships().ManagedTenants().ManagementActions().ByManagementActionId("managementAction-id").Get(context.Background(), nil)


```