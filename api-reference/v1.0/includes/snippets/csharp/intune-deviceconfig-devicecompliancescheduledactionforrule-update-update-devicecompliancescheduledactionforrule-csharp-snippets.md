---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceComplianceScheduledActionForRule
{
	OdataType = "#microsoft.graph.deviceComplianceScheduledActionForRule",
	RuleName = "Rule Name value",
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].ScheduledActionsForRule["{deviceComplianceScheduledActionForRule-id}"].PatchAsync(requestBody);


```