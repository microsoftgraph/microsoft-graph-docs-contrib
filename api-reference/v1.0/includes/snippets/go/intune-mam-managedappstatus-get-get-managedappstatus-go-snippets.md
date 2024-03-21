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



managedAppStatuses, err := graphClient.DeviceAppManagement().ManagedAppStatuses().ByManagedAppStatusId("managedAppStatus-id").Get(context.Background(), nil)


```