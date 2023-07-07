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



result, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().ByPartnerId("crossTenantAccessPolicyConfigurationPartner-tenantId").Get(context.Background(), nil)


```