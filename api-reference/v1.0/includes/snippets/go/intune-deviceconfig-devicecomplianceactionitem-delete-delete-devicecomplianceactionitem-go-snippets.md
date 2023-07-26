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



graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicieId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByScheduledActionsForRule().Id("deviceComplianceScheduledActionForRule-id").ScheduledActionConfigurations().ByScheduledActionConfigurationId("deviceComplianceActionItem-id").Delete(context.Background(), nil)


```