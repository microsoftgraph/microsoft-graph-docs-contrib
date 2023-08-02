---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceComplianceScheduledActionForRule()
ruleName := "Rule Name value"
requestBody.SetRuleName(&ruleName) 

scheduledActionsForRule, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByDeviceComplianceScheduledActionForRuleId("deviceComplianceScheduledActionForRule-id").Patch(context.Background(), requestBody, nil)


```