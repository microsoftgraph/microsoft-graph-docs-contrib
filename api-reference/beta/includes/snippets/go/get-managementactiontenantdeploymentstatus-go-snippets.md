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



managementActionTenantDeploymentStatuses, err := graphClient.TenantRelationships().ManagedTenants().ManagementActionTenantDeploymentStatuses().ByManagementActionTenantDeploymentStatusId("managementActionTenantDeploymentStatus-id").Get(context.Background(), nil)


```