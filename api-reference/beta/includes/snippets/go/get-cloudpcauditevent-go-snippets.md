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



auditEvents, err := graphClient.DeviceManagement().VirtualEndpoint().AuditEvents().ByCloudPcAuditEventId("cloudPcAuditEvent-id").Get(context.Background(), nil)


```