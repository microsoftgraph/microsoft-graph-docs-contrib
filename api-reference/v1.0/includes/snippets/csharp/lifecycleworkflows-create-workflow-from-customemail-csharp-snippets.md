---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.IdentityGovernance.Workflow
{
	Category = Microsoft.Graph.Models.IdentityGovernance.LifecycleWorkflowCategory.Joiner,
	Description = "Configure new hire tasks for onboarding employees on their first day",
	DisplayName = "custom email marketing API test",
	IsEnabled = true,
	IsSchedulingEnabled = false,
	ExecutionConditions = new Microsoft.Graph.Models.IdentityGovernance.TriggerAndScopeBasedConditions
	{
		OdataType = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		Scope = new Microsoft.Graph.Models.IdentityGovernance.RuleBasedSubjectSet
		{
			OdataType = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			Rule = "(department eq 'Marketing')",
		},
		Trigger = new Microsoft.Graph.Models.IdentityGovernance.TimeBasedAttributeTrigger
		{
			OdataType = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
			TimeBasedAttribute = Microsoft.Graph.Models.IdentityGovernance.WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
			OffsetInDays = 0,
		},
	},
	Tasks = new List<Microsoft.Graph.Models.IdentityGovernance.Task>
	{
		new Microsoft.Graph.Models.IdentityGovernance.TaskObject
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
		new Microsoft.Graph.Models.IdentityGovernance.TaskObject
		{
			ContinueOnError = false,
			Description = "Send welcome email to new hire",
			DisplayName = "Send Welcome Email",
			IsEnabled = true,
			TaskDefinitionId = "70b29d51-b59a-4773-9280-8841dfd3f2ea",
			Arguments = new List<KeyValuePair>
			{
				new KeyValuePair
				{
					Name = "cc",
					Value = "1baa57fa-3c4e-4526-ba5a-db47a9df95f0",
				},
				new KeyValuePair
				{
					Name = "customSubject",
					Value = "Welcome to the organization {{userDisplayName}}!",
				},
				new KeyValuePair
				{
					Name = "customBody",
					Value = "Welcome to our organization {{userGivenName}}!",
				},
				new KeyValuePair
				{
					Name = "locale",
					Value = "en-us",
				},
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.PostAsync(requestBody);


```