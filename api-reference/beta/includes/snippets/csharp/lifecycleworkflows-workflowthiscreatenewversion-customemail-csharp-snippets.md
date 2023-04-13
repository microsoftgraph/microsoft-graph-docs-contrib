---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.IdentityGovernanceCreateNewVersion.CreateNewVersionPostRequestBody
{
	Workflow = new Microsoft.Graph.Beta.Models.IdentityGovernance.Workflow
	{
		Category = Microsoft.Graph.Beta.Models.IdentityGovernance.LifecycleWorkflowCategory.Joiner,
		Description = "Configure new hire tasks for onboarding employees on their first day",
		DisplayName = "Global onboard new hire employee",
		IsEnabled = true,
		IsSchedulingEnabled = false,
		ExecutionConditions = new Microsoft.Graph.Beta.Models.IdentityGovernance.WorkflowExecutionConditions
		{
			OdataType = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"scope" , new 
					{
						OdataType = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
						Rule = "(department eq 'Marketing')",
					}
				},
				{
					"trigger" , new 
					{
						OdataType = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
						TimeBasedAttribute = "employeeHireDate",
						OffsetInDays = 1,
					}
				},
			},
		},
		Tasks = new List<Microsoft.Graph.Beta.Models.IdentityGovernance.TaskObject>
		{
			new Microsoft.Graph.Beta.Models.IdentityGovernance.TaskObject
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
			new Microsoft.Graph.Beta.Models.IdentityGovernance.TaskObject
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
	},
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].IdentityGovernanceCreateNewVersion.PostAsync(requestBody);


```