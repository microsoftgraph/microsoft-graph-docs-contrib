---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceCreateNewVersion;
using Microsoft.Graph.Beta.Models.IdentityGovernance;
using Microsoft.Graph.Beta.Models;

var requestBody = new CreateNewVersionPostRequestBody
{
	Workflow = new Workflow
	{
		Category = LifecycleWorkflowCategory.Joiner,
		Description = "Configure new hire tasks for onboarding employees on their first day",
		DisplayName = "Global onboard new hire employee",
		IsEnabled = true,
		IsSchedulingEnabled = false,
		ExecutionConditions = new TriggerAndScopeBasedConditions
		{
			OdataType = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
			Scope = new RuleBasedSubjectSet
			{
				OdataType = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
				Rule = "(department eq 'Marketing')",
			},
			Trigger = new TimeBasedAttributeTrigger
			{
				OdataType = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
				TimeBasedAttribute = WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
				OffsetInDays = 1,
			},
		},
		Tasks = new List<TaskObject>
		{
			new TaskObject
			{
				ContinueOnError = false,
				Description = "Enable user account in the directory",
				DisplayName = "Enable User Account",
				IsEnabled = true,
				TaskDefinitionId = "6fc52c9d-398b-4305-9763-15f42c1676fc",
				Arguments = new List<KeyValuePair>
				{
				},
			},
			new TaskObject
			{
				ContinueOnError = false,
				Description = "Send welcome email to new hire",
				DisplayName = "Send Welcome Email",
				IsEnabled = true,
				TaskDefinitionId = "70b29d51-b59a-4773-9280-8841dfd3f2ea",
				Arguments = new List<KeyValuePair>
				{
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceCreateNewVersion.PostAsync(requestBody);


```