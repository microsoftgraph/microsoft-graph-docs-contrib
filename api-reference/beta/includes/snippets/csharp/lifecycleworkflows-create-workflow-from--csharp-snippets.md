---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflow = new Microsoft.Graph.IdentityGovernance.Workflow
{
	Category = Microsoft.Graph.IdentityGovernance.LifecycleWorkflowCategory.Joiner,
	Description = "Configure new hire tasks for onboarding employees on their first day",
	DisplayName = "Australia Onboard new hire employee",
	IsEnabled = true,
	IsSchedulingEnabled = false,
	ExecutionConditions = new Microsoft.Graph.IdentityGovernance.TriggerAndScopeBasedConditions
	{
		Scope = new Microsoft.Graph.IdentityGovernance.RuleBasedSubjectSet
		{
			Rule = "(country eq 'Australia')"
		},
		Trigger = new Microsoft.Graph.IdentityGovernance.TimeBasedAttributeTrigger
		{
			TimeBasedAttribute = Microsoft.Graph.IdentityGovernance.WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
			OffsetInDays = 0
		}
	},
	Tasks = new Microsoft.Graph.IdentityGovernance.WorkflowTasksCollectionPage()
	{
		new Microsoft.Graph.IdentityGovernance.Task
		{
			ContinueOnError = false,
			Description = "Enable user account in the directory",
			DisplayName = "Enable User Account",
			IsEnabled = true,
			TaskDefinitionId = "6fc52c9d-398b-4305-9763-15f42c1676fc",
			Arguments = new List<KeyValuePair>()
			{
			}
		},
		new Microsoft.Graph.IdentityGovernance.Task
		{
			ContinueOnError = false,
			Description = "Send welcome email to new hire",
			DisplayName = "Send Welcome Email",
			IsEnabled = true,
			TaskDefinitionId = "70b29d51-b59a-4773-9280-8841dfd3f2ea",
			Arguments = new List<KeyValuePair>()
			{
			}
		}
	}
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows
	.Request()
	.AddAsync(workflow);

```