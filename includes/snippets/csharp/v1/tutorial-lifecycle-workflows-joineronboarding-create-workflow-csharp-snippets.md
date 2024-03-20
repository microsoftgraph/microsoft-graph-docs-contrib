---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.IdentityGovernance;
using Microsoft.Graph.Models;

var requestBody = new Workflow
{
	DisplayName = "Onboard pre-hire employee",
	Description = "Configure pre-hire tasks for onboarding employees before their first day",
	IsEnabled = true,
	IsSchedulingEnabled = false,
	ExecutionConditions = new TriggerAndScopeBasedConditions
	{
		OdataType = "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		Scope = new RuleBasedSubjectSet
		{
			OdataType = "microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			Rule = "(department eq 'Sales')",
		},
		Trigger = new TimeBasedAttributeTrigger
		{
			OdataType = "microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
			TimeBasedAttribute = WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
			OffsetInDays = -2,
		},
	},
	Tasks = new List<TaskObject>
	{
		new TaskObject
		{
			IsEnabled = true,
			Category = LifecycleTaskCategory.Joiner,
			TaskDefinitionId = "1b555e50-7f65-41d5-b514-5894a026d10d",
			DisplayName = "Generate TAP And Send Email",
			Description = "Generate Temporary Access Pass and send via email to user's manager",
			Arguments = new List<KeyValuePair>
			{
				new KeyValuePair
				{
					Name = "tapLifetimeMinutes",
					Value = "480",
				},
				new KeyValuePair
				{
					Name = "tapIsUsableOnce",
					Value = "true",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.PostAsync(requestBody);


```