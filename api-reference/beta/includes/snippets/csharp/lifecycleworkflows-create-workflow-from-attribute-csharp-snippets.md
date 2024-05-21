---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IdentityGovernance;
using Microsoft.Graph.Beta.Models;

var requestBody = new Workflow
{
	Category = LifecycleWorkflowCategory.Mover,
	Description = "Configure mover tasks for a user when their job profile changes",
	DisplayName = "Sales contractor moves to full-time employee",
	IsEnabled = true,
	IsSchedulingEnabled = true,
	ExecutionConditions = new TriggerAndScopeBasedConditions
	{
		OdataType = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		Scope = new RuleBasedSubjectSet
		{
			OdataType = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			Rule = "(department eq 'Sales')",
		},
		Trigger = new AttributeChangeTrigger
		{
			OdataType = "#microsoft.graph.identityGovernance.attributeChangeTrigger",
			TriggerAttributes = new List<TriggerAttribute>
			{
				new TriggerAttribute
				{
					Name = "department",
				},
			},
		},
	},
	Tasks = new List<TaskObject>
	{
		new TaskObject
		{
			ContinueOnError = false,
			Description = "Send email to moving employee's manager",
			DisplayName = "Notify manager of move",
			IsEnabled = true,
			TaskDefinitionId = "aab41899-9972-422a-9d97-f626014578b7",
			Arguments = new List<KeyValuePair>
			{
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.PostAsync(requestBody);


```