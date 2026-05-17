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
	Category = LifecycleWorkflowCategory.Mover,
	DisplayName = "On Demand workflow move",
	Description = "Execute real-time tasks for employee job changes",
	Tasks = new List<TaskObject>
	{
		new TaskObject
		{
			Arguments = new List<KeyValuePair>
			{
			},
			Description = "Send email to notify user's manager of user move",
			DisplayName = "Send email to notify manager of user move",
			IsEnabled = true,
			ContinueOnError = false,
			TaskDefinitionId = "aab41899-9972-422a-9d97-f626014578b7",
			Category = LifecycleTaskCategory.Mover,
		},
	},
	ExecutionConditions = new OnDemandExecutionOnly
	{
		OdataType = "#microsoft.graph.identityGovernance.onDemandExecutionOnly",
	},
	IsEnabled = true,
	IsSchedulingEnabled = false,
	AdministrationScopeTargets = new List<DirectoryObject>
	{
		new AdministrativeUnit
		{
			OdataType = "#microsoft.graph.administrativeUnit",
			Id = "4f9dc456-0574-4122-9e55-8b4cc494b27d",
		},
		new AdministrativeUnit
		{
			OdataType = "#microsoft.graph.administrativeUnit",
			Id = "2c987843-e9b1-4b1a-b924-ff1d2a9b054d",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.PostAsync(requestBody);


```