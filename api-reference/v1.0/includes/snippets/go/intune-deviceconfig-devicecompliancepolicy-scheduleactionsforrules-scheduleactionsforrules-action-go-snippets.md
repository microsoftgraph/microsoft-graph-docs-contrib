---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewScheduleActionsForRulesPostRequestBody()


deviceComplianceScheduledActionForRule := graphmodels.NewDeviceComplianceScheduledActionForRule()
id := "f0075d5e-5d5e-f007-5e5d-07f05e5d07f0"
deviceComplianceScheduledActionForRule.SetId(&id) 
ruleName := "Rule Name value"
deviceComplianceScheduledActionForRule.SetRuleName(&ruleName) 

deviceComplianceScheduledActionForRules := []graphmodels.DeviceComplianceScheduledActionForRuleable {
	deviceComplianceScheduledActionForRule,
}
requestBody.SetDeviceComplianceScheduledActionForRules(deviceComplianceScheduledActionForRules)

graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").ScheduleActionsForRules().Post(context.Background(), requestBody, nil)


```