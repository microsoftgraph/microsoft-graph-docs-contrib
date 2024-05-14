---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



tenants, err := graphClient.TenantRelationships().MultiTenantOrganization().Tenants().ByMultiTenantOrganizationMemberId("multiTenantOrganizationMember-id").Get(context.Background(), nil)


```