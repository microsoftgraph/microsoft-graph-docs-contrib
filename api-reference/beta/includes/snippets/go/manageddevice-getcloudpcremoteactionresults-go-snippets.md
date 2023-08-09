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



getCloudPcRemoteActionResults(), err := graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").GetCloudPcRemoteActionResults().Get(context.Background(), nil)


```