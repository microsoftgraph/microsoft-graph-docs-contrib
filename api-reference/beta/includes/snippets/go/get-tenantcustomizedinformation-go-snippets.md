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



tenantsCustomizedInformation, err := graphClient.TenantRelationships().ManagedTenants().TenantsCustomizedInformation().ByTenantCustomizedInformationId("tenantCustomizedInformation-id").Get(context.Background(), nil)


```