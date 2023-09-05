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



iosUpdateStatuses, err := graphClient.DeviceManagement().IosUpdateStatuses().ByIosUpdateDeviceStatusId("iosUpdateDeviceStatus-id").Get(context.Background(), nil)


```