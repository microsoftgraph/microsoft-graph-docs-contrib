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



userStatusSummary, err := graphClient.DeviceAppManagement().MobileAppConfigurations().ByManagedDeviceMobileAppConfigurationId("managedDeviceMobileAppConfiguration-id").UserStatusSummary().Get(context.Background(), nil)


```