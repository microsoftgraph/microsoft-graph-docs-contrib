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

result, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicieId("deviceCompliancePolicy-id").ScheduledActionsForRule().ByScheduledActionsForRule().Id("deviceComplianceScheduledActionForRule-id").Patch(context.Background(), requestBody, nil)


```