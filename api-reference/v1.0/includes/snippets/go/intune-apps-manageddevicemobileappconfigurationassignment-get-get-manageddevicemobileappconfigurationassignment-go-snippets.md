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



assignments, err := graphClient.DeviceAppManagement().MobileAppConfigurations().ByManagedDeviceMobileAppConfigurationId("managedDeviceMobileAppConfiguration-id").Assignments().ByManagedDeviceMobileAppConfigurationAssignmentId("managedDeviceMobileAppConfigurationAssignment-id").Get(context.Background(), nil)


```