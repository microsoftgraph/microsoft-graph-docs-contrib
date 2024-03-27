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



getAuditActivityTypes, err := graphClient.DeviceManagement().VirtualEndpoint().AuditEvents().GetAuditActivityTypes().GetAsGetAuditActivityTypesGetResponse(context.Background(), nil)


```