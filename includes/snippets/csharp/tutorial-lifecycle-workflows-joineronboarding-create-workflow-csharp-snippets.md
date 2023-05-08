---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.IdentityGovernance.Workflow
{
	DisplayName = "Onboard pre-hire employee",
	Description = "Configure pre-hire tasks for onboarding employees before their first day",
	IsEnabled = true,
	IsSchedulingEnabled = false,
	ExecutionConditions = new Microsoft.Graph.Beta.Models.IdentityGovernance.WorkflowExecutionConditions
	{
		OdataType = "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"scope" , new 
				{
					OdataType = "microsoft.graph.identityGovernance.ruleBasedSubjectSet",
					Rule = "(department eq 'Sales')",
				}
			},
			{
				"trigger" , new 
				{
					OdataType = "microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
					TimeBasedAttribute = "employeeHireDate",
					OffsetInDays = -2,
				}
			},
		},
	},
	Tasks = new List<Microsoft.Graph.Beta.Models.IdentityGovernance.TaskObject>
	{
		new Microsoft.Graph.Beta.Models.IdentityGovernance.TaskObject
		{
			IsEnabled = true,
			Category = Microsoft.Graph.Beta.Models.IdentityGovernance.LifecycleTaskCategory.Joiner,
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
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.PostAsync(requestBody);


```