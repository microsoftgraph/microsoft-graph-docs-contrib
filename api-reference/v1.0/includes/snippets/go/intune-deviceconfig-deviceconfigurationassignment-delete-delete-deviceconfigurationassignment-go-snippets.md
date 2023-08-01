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



graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Assignments().ByAssignmentId("deviceConfigurationAssignment-id").Delete(context.Background(), nil)


```