---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.DeviceManagement;

var requestBody = new AlertRule
{
	Id = "215c55cc-b1c9-4d36-a870-be5778101714",
	DisplayName = "Azure network connection failure impacting Cloud PCs",
	Severity = RuleSeverityType.Informational,
	IsSystemRule = true,
	Description = "Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs",
	Enabled = true,
	AlertRuleTemplate = AlertRuleTemplate.CloudPcOnPremiseNetworkConnectionCheckScenario,
	Threshold = new RuleThreshold
	{
		Aggregation = AggregationType.Count,
		Operator = OperatorType.GreaterOrEqual,
		Target = 90,
	},
	Conditions = new List<RuleCondition>
	{
		new RuleCondition
		{
			RelationshipType = RelationshipType.Or,
			ConditionCategory = ConditionCategory.AzureNetworkConnectionCheckFailures,
			Aggregation = AggregationType.Count,
			Operator = OperatorType.GreaterOrEqual,
			ThresholdValue = "90",
		},
	},
	NotificationChannels = new List<NotificationChannel>
	{
		new NotificationChannel
		{
			NotificationChannelType = NotificationChannelType.Portal,
			NotificationReceivers = new List<NotificationReceiver>
			{
			},
		},
		new NotificationChannel
		{
			NotificationChannelType = NotificationChannelType.Email,
			NotificationReceivers = new List<NotificationReceiver>
			{
				new NotificationReceiver
				{
					Locale = "en-us",
					ContactInformation = "serena.davis@contoso.com",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.Monitoring.AlertRules.PostAsync(requestBody);


```