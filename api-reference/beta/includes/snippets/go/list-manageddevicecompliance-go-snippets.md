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



managedDeviceCompliances, err := graphClient.TenantRelationships().ManagedTenants().ManagedDeviceCompliances().Get(context.Background(), nil)


```