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



customSecurityAttributeAudits, err := graphClient.AuditLogs().CustomSecurityAttributeAudits().ByCustomSecurityAttributeAuditId("customSecurityAttributeAudit-id").Get(context.Background(), nil)


```