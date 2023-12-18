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



delegatedAdminRelationships, err := graphClient.TenantRelationships().DelegatedAdminRelationships().ByDelegatedAdminRelationshipId("delegatedAdminRelationship-id").Get(context.Background(), nil)


```