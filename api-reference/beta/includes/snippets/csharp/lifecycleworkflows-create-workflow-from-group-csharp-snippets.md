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
	Category = LifecycleWorkflowCategory.Leaver,
	Description = "Configure offboarding tasks for employees on their last day of work",
	DisplayName = "Offboard an employee",
	IsEnabled = true,
	IsSchedulingEnabled = true,
	ExecutionConditions = new TriggerAndScopeBasedConditions
	{
		OdataType = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		Scope = new GroupBasedSubjectSet
		{
			OdataType = "#microsoft.graph.identityGovernance.groupBasedSubjectSet",
			Groups = new List<Group>
			{
				new Group
				{
					Id = "668e7540-7f8e-4ca4-a207-b7dffbb6d038",
				},
			},
		},
		Trigger = new MembershipChangeTrigger
		{
			OdataType = "#microsoft.graph.identityGovernance.membershipChangeTrigger",
			ChangeType = MembershipChangeType.Remove,
		},
	},
	Tasks = new List<TaskObject>
	{
		new TaskObject
		{
			Category = LifecycleTaskCategory.Leaver,
			ContinueOnError = false,
			Description = "Remove user from all Teams memberships",
			DisplayName = "Remove user from all Teams",
			IsEnabled = true,
			TaskDefinitionId = "81f7b200-2816-4b3b-8c5d-dc556f07b024",
			Arguments = new List<KeyValuePair>
			{
			},
		},
		new TaskObject
		{
			Category = LifecycleTaskCategory.Leaver,
			ContinueOnError = false,
			Description = "Remove user from all Azure AD groups memberships",
			DisplayName = "Remove user from all groups",
			IsEnabled = true,
			TaskDefinitionId = "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
			Arguments = new List<KeyValuePair>
			{
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.PostAsync(requestBody);


```