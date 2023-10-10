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



deviceManagementPartners, err := graphClient.DeviceManagement().DeviceManagementPartners().ByDeviceManagementPartnerId("deviceManagementPartner-id").Get(context.Background(), nil)


```