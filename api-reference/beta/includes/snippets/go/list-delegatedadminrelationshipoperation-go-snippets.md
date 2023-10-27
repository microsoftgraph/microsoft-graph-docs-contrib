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



operations, err := graphClient.TenantRelationships().DelegatedAdminRelationships().ByDelegatedAdminRelationshipId("delegatedAdminRelationship-id").Operations().Get(context.Background(), nil)


```