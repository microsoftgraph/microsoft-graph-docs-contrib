---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PlannerTaskConfiguration
{
	EditPolicy = new PlannerTaskPolicy
	{
		Rules = new List<PlannerTaskRoleBasedRule>
		{
			new PlannerTaskRoleBasedRule
			{
				DefaultRule = "block",
				PropertyRule = new PlannerTaskPropertyRule
				{
					RuleKind = PlannerRuleKind.TaskRule,
					References = new PlannerFieldRules
					{
						DefaultRules = new List<string>
						{
							"allow",
						},
						Overrides = new List<PlannerRuleOverride>
						{
						},
					},
					CheckLists = new PlannerFieldRules
					{
						DefaultRules = new List<string>
						{
							"allow",
						},
						Overrides = new List<PlannerRuleOverride>
						{
						},
					},
					Assignments = new PlannerFieldRules
					{
						DefaultRules = new List<string>
						{
							"allow",
						},
						Overrides = new List<PlannerRuleOverride>
						{
							new PlannerRuleOverride
							{
								Name = "userCreated",
								Rules = new List<string>
								{
									"allow",
								},
							},
							new PlannerRuleOverride
							{
								Name = "applicationCreated",
								Rules = new List<string>
								{
									"allow",
								},
							},
						},
					},
					AppliedCategories = new PlannerFieldRules
					{
						DefaultRules = new List<string>
						{
							"allow",
						},
						Overrides = new List<PlannerRuleOverride>
						{
						},
					},
				},
				AdditionalData = new Dictionary<string, object>
				{
					{
						"userType" , new PlannerRelationshipBasedUserType
						{
							OdataType = "#microsoft.graph.plannerRelationshipBasedUserType",
							Role = PlannerRelationshipUserRoles.DefaultRules,
							AdditionalData = new Dictionary<string, object>
							{
								{
									"selectionKind" , "relationship"
								},
							},
						}
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.TaskConfiguration.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```