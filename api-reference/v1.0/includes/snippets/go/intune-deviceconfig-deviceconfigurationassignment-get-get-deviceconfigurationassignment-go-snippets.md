---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Assignments().ByAssignmentId("deviceConfigurationAssignment-id").Get(context.Background(), nil)


```