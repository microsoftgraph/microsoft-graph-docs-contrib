---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceCreateNewVersion;
using Microsoft.Graph.Models.IdentityGovernance;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new CreateNewVersionPostRequestBody
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
			"executionConditions" , new TriggerAndScopeBasedConditions
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
					OffsetInDays = 0,
				},
			}
		},
		{
			"tasks" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"continueOnError", new UntypedBoolean(false)
					},
					{
						"description", new UntypedString("Enable user account in the directory")
					},
					{
						"displayName", new UntypedString("Enable User Account")
					},
					{
						"isEnabled", new UntypedBoolean(true)
					},
					{
						"taskDefinitionId", new UntypedString("6fc52c9d-398b-4305-9763-15f42c1676fc")
					},
					{
						"arguments", new UntypedArray(new List<UntypedNode>
						{
						})
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"continueOnError", new UntypedBoolean(false)
					},
					{
						"description", new UntypedString("Send welcome email to new hire")
					},
					{
						"displayName", new UntypedString("Send Welcome Email")
					},
					{
						"isEnabled", new UntypedBoolean(true)
					},
					{
						"taskDefinitionId", new UntypedString("70b29d51-b59a-4773-9280-8841dfd3f2ea")
					},
					{
						"arguments", new UntypedArray(new List<UntypedNode>
						{
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"name", new UntypedString("cc")
								},
								{
									"value", new UntypedString("1baa57fa-3c4e-4526-ba5a-db47a9df95f0")
								},
							}),
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"name", new UntypedString("customSubject")
								},
								{
									"value", new UntypedString("Welcome to the organization {{userDisplayName}}!")
								},
							}),
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"name", new UntypedString("customBody")
								},
								{
									"value", new UntypedString("Welcome to our organization {{userGivenName}}!")
								},
							}),
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"name", new UntypedString("locale")
								},
								{
									"value", new UntypedString("en-us")
								},
							}),
						})
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceCreateNewVersion.PostAsync(requestBody);


```