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



cloudPcDevices, err := graphClient.TenantRelationships().ManagedTenants().CloudPcDevices().ByCloudPcDeviceId("cloudPcDevice-id").Get(context.Background(), nil)


```