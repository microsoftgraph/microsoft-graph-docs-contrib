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



deviceImages, err := graphClient.DeviceManagement().VirtualEndpoint().DeviceImages().ByCloudPcDeviceImageId("cloudPcDeviceImage-id").Get(context.Background(), nil)


```