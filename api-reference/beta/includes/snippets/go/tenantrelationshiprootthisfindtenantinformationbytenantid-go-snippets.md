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



tenantId := "{tenantId}"
findTenantInformationByTenantId, err := graphClient.TenantRelationships().FindTenantInformationByTenantIdWithTenantId(&tenantId).Get(context.Background(), nil)


```