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



tenantsDetailedInformation, err := graphClient.TenantRelationships().ManagedTenants().TenantsDetailedInformation().ByTenantDetailedInformationId("tenantDetailedInformation-id").Get(context.Background(), nil)


```