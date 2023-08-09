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



findTenantInformationByTenantId(tenantId='{tenantId}'), err := graphClient.TenantRelationships().FindTenantInformationByTenantId(tenantId='{tenantId}')().Get(context.Background(), nil)


```