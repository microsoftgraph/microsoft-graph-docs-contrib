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



tenantGroups, err := graphClient.TenantRelationships().ManagedTenants().TenantGroups().ByTenantGroupId("tenantGroup-id").Get(context.Background(), nil)


```