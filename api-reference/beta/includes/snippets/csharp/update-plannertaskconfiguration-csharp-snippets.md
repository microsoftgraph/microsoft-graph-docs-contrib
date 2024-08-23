---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PlannerTaskConfiguration
{
	OdataType = "#microsoft.graph.plannerTaskConfiguration",
	EditPolicy = new PlannerTaskPolicy
	{
		Rules = new List<PlannerTaskRoleBasedRule>
		{
			new PlannerTaskRoleBasedRule
			{
				DefaultRule = "block",
				Role = new PlannerRelationshipBasedUserType
				{
					OdataType = "#microsoft.graph.plannerRelationshipBasedUserType",
					RoleKind = PlannerUserRoleKind.Relationship,
					Role = PlannerRelationshipUserRoles.DefaultRules,
				},
				PropertyRule = new PlannerTaskPropertyRule
				{
					PercentComplete = new List<string>
					{
						"allow",
					},
					RuleKind = PlannerRuleKind.TaskRule,
					Assignments = new PlannerFieldRules
					{
						DefaultRules = new List<string>
						{
							"addSelf",
						},
						Overrides = new List<PlannerRuleOverride>
						{
						},
					},
				},
			},
			new PlannerTaskRoleBasedRule
			{
				DefaultRule = "block",
				Role = new PlannerRelationshipBasedUserType
				{
					OdataType = "#microsoft.graph.plannerRelationshipBasedUserType",
					RoleKind = PlannerUserRoleKind.Relationship,
					Role = PlannerRelationshipUserRoles.TaskAssignees,
				},
				PropertyRule = new PlannerTaskPropertyRule
				{
					StartDate = new List<string>
					{
						"allow",
					},
					DueDate = new List<string>
					{
						"allow",
					},
					PercentComplete = new List<string>
					{
						"allow",
					},
					Order = new List<string>
					{
						"allow",
					},
					RuleKind = PlannerRuleKind.TaskRule,
					References = new PlannerFieldRules
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
									"block",
								},
							},
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
									"check",
								},
							},
						},
					},
					Assignments = new PlannerFieldRules
					{
						DefaultRules = new List<string>
						{
							"block",
						},
						Overrides = new List<PlannerRuleOverride>
						{
							new PlannerRuleOverride
							{
								Name = "userCreated",
								Rules = new List<string>
								{
									"removeSelf",
								},
							},
							new PlannerRuleOverride
							{
								Name = "applicationCreated",
								Rules = new List<string>
								{
									"check",
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
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.TaskConfiguration.PatchAsync(requestBody);


```