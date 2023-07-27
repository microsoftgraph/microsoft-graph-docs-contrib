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



result, err := graphClient.DeviceManagement().DeviceCompliancePolicySettingStateSummaries().ByDeviceCompliancePolicySettingStateSummarieId("deviceCompliancePolicySettingStateSummary-id").DeviceComplianceSettingStates().ByDeviceComplianceSettingStateId("deviceComplianceSettingState-id").Get(context.Background(), nil)


```