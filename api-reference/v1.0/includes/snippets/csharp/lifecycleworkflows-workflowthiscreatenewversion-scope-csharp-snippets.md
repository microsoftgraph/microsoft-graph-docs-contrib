---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceCreateNewVersion;
using Microsoft.Graph.Models.IdentityGovernance;
using Microsoft.Graph.Models;

var requestBody = new CreateNewVersionPostRequestBody
{
	Workflow = new Workflow
	{
		Category = LifecycleWorkflowCategory.Mover,
		DisplayName = "On Demand mover workflow",
		Description = "Execute real-time tasks for employee job changes",
		Tasks = new List<TaskObject>
		{
			new TaskObject
			{
				Category = LifecycleTaskCategory.Mover,
				ContinueOnError = false,
				Description = "Send email to notify user's manager of user move",
				DisplayName = "Send email to notify manager of user move",
				ExecutionSequence = 1,
				Id = "f09eb640-6c16-4f1a-8b48-6a295a307705",
				IsEnabled = true,
				TaskDefinitionId = "aab41899-9972-422a-9d97-f626014578b7",
				Arguments = new List<KeyValuePair>
				{
				},
			},
			new TaskObject
			{
				Arguments = new List<KeyValuePair>
				{
					new KeyValuePair
					{
						Name = "groupID",
						Value = "8d1d1deb-2ef0-4f72-a460-729a1cc74e7e",
					},
				},
				Description = "Add user to selected groups",
				DisplayName = "Add user to groups",
				IsEnabled = true,
				ContinueOnError = false,
				TaskDefinitionId = "22085229-5809-45e8-97fd-270d28d66910",
				Category = LifecycleTaskCategory.Joiner | LifecycleTaskCategory.Leaver | LifecycleTaskCategory.Mover,
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
				Id = "2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceCreateNewVersion.PostAsync(requestBody);


```