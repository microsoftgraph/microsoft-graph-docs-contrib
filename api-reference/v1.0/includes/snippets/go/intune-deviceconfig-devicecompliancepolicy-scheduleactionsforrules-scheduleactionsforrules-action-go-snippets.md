---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").ScheduleActionsForRules().Post(context.Background(), requestBody, nil)


```