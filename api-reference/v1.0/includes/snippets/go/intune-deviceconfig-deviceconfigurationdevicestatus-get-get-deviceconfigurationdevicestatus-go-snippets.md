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



deviceStatuses, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").DeviceStatuses().ByDeviceConfigurationDeviceStatusId("deviceConfigurationDeviceStatus-id").Get(context.Background(), nil)


```