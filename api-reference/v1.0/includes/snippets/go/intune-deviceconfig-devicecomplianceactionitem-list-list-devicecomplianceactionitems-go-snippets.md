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



result, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicieId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByScheduledActionsForRule().Id("deviceComplianceScheduledActionForRule-id").ScheduledActionConfigurations().Get(context.Background(), nil)


```