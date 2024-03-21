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



deviceCompliancePolicyDeviceStateSummary, err := graphClient.DeviceManagement().DeviceCompliancePolicyDeviceStateSummary().Get(context.Background(), nil)


```