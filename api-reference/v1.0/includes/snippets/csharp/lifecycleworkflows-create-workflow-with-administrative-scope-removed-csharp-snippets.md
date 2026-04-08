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
		DisplayName = "Remove existing target scope of a workflow",
		Description = "On-demand removal of the target scope of a workflow.",
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
						Value = "5fa668df-a7b0-43fe-828d-48f7a1f7ca44",
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
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceCreateNewVersion.PostAsync(requestBody);


```