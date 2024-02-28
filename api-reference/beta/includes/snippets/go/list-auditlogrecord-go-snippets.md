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



records, err := graphClient.Security().AuditLog().Queries().ByAuditLogQueryId("auditLogQuery-id").Records().Get(context.Background(), nil)


```