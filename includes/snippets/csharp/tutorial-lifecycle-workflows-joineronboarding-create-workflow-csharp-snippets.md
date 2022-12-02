---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflow = new Microsoft.Graph.IdentityGovernance.Workflow
{
	DisplayName = "Onboard pre-hire employee",
	Description = "Configure pre-hire tasks for onboarding employees before their first day",
	IsEnabled = true,
	IsSchedulingEnabled = false,
	ExecutionConditions = new TriggerAndScopeBasedConditions
	{
		Scope = new RuleBasedSubjectSet
		{
			Rule = "(department eq 'Sales')"
		},
		Trigger = new TimeBasedAttributeTrigger
		{
			TimeBasedAttribute = Microsoft.Graph.IdentityGovernance.WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
			OffsetInDays = -2
		}
	},
	Tasks = new Microsoft.Graph.IdentityGovernance.WorkflowTasksCollectionPage()
	{
		new Microsoft.Graph.IdentityGovernance.Task
		{
			IsEnabled = true,
			Category = Microsoft.Graph.IdentityGovernance.LifecycleTaskCategory.Joiner,
			TaskDefinitionId = "1b555e50-7f65-41d5-b514-5894a026d10d",
			DisplayName = "Generate TAP And Send Email",
			Description = "Generate Temporary Access Pass and send via email to user's manager",
			Arguments = new List<KeyValuePair>()
			{
				new KeyValuePair
				{
					Name = "tapLifetimeMinutes",
					Value = "480"
				},
				new KeyValuePair
				{
					Name = "tapIsUsableOnce",
					Value = "true"
				}
			}
		}
	}
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows
	.Request()
	.AddAsync(workflow);

```