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



queries, err := graphClient.Security().AuditLog().Queries().ByAuditLogQueryId("auditLogQuery-id").Get(context.Background(), nil)


```