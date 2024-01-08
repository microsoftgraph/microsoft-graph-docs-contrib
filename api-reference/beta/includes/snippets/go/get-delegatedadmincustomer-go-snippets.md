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



delegatedAdminCustomers, err := graphClient.TenantRelationships().DelegatedAdminCustomers().ByDelegatedAdminCustomerId("delegatedAdminCustomer-id").Get(context.Background(), nil)


```