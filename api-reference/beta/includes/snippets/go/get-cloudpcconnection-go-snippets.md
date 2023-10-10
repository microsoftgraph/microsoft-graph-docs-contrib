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



cloudPcConnections, err := graphClient.TenantRelationships().ManagedTenants().CloudPcConnections().ByCloudPcConnectionId("cloudPcConnection-id").Get(context.Background(), nil)


```