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



auditEvents, err := graphClient.DeviceManagement().AuditEvents().ByAuditEventId("auditEvent-id").Get(context.Background(), nil)


```