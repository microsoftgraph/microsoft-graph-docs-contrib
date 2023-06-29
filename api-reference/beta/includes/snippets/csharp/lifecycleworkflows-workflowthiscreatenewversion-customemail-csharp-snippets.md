---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceCreateNewVersion.CreateNewVersionPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"category" , "joiner"
		},
		{
			"description" , "Configure new hire tasks for onboarding employees on their first day"
		},
		{
			"displayName" , "custom email marketing API test"
		},
		{
			"isEnabled" , true
		},
		{
			"isSchedulingEnabled" , false
		},
		{
			"executionConditions" , new 
			{
				OdataType = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
				Scope = new 
				{
					OdataType = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
					Rule = "(department eq 'Marketing')",
				},
				Trigger = new 
				{
					OdataType = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
					TimeBasedAttribute = "employeeHireDate",
					OffsetInDays = 0,
				},
			}
		},
		{
			"tasks" , new List<object>
			{
				new 
				{
					ContinueOnError = false,
					Description = "Enable user account in the directory",
					DisplayName = "Enable User Account",
					IsEnabled = true,
					TaskDefinitionId = "6fc52c9d-398b-4305-9763-15f42c1676fc",
					Arguments = new List<object>
					{
					},
				},
				new 
				{
					ContinueOnError = false,
					Description = "Send welcome email to new hire",
					DisplayName = "Send Welcome Email",
					IsEnabled = true,
					TaskDefinitionId = "70b29d51-b59a-4773-9280-8841dfd3f2ea",
					Arguments = new List<object>
					{
						new 
						{
							Name = "cc",
							Value = "1baa57fa-3c4e-4526-ba5a-db47a9df95f0",
						},
						new 
						{
							Name = "customSubject",
							Value = "Welcome to the organization {{userDisplayName}}!",
						},
						new 
						{
							Name = "customBody",
							Value = "Welcome to our organization {{userGivenName}}!",
						},
						new 
						{
							Name = "locale",
							Value = "en-us",
						},
					},
				},
			}
		},
	},
};
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceCreateNewVersion.PostAsync(requestBody);


```