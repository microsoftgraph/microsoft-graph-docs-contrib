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



assignments, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Assignments().ByDeviceCompliancePolicyAssignmentId("deviceCompliancePolicyAssignment-id").Get(context.Background(), nil)


```