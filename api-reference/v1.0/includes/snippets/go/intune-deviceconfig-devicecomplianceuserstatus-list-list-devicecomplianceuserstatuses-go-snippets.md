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



userStatuses, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").UserStatuses().Get(context.Background(), nil)


```