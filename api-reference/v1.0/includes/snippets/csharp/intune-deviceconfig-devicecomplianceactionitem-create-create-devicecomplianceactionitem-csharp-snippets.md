---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceComplianceActionItem
{
	OdataType = "#microsoft.graph.deviceComplianceActionItem",
	GracePeriodHours = 0,
	ActionType = DeviceComplianceActionType.Notification,
	NotificationTemplateId = "Notification Template Id value",
	NotificationMessageCCList = new List<string>
	{
		"Notification Message CCList value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].ScheduledActionsForRule["{deviceComplianceScheduledActionForRule-id}"].ScheduledActionConfigurations.PostAsync(requestBody);


```