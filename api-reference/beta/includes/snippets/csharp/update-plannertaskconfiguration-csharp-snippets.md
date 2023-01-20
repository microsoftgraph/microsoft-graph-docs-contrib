---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var plannerTaskConfiguration = new PlannerTaskConfiguration
{
	EditPolicy = new PlannerTaskPolicy
	{
		Rules = new List<PlannerTaskRoleBasedRule>()
		{
			new PlannerTaskRoleBasedRule
			{
				DefaultRule = "block",
				Role = new PlannerRelationshipBasedUserType
				{
					RoleKind = PlannerUserRoleKind.Relationship,
					Role = PlannerRelationshipUserRoles.DefaultRules
				},
				PropertyRule = new PlannerTaskPropertyRule
				{
					PercentComplete = new List<String>()
					{
						"allow"
					},
					RuleKind = PlannerRuleKind.TaskRule,
					Assignments = new PlannerFieldRules
					{
						DefaultRules = new List<String>()
						{
							"addSelf"
						},
						Overrides = new List<PlannerRuleOverride>()
						{
						}
					}
				}
			},
			new PlannerTaskRoleBasedRule
			{
				DefaultRule = "block",
				Role = new PlannerRelationshipBasedUserType
				{
					RoleKind = PlannerUserRoleKind.Relationship,
					Role = PlannerRelationshipUserRoles.TaskAssignees
				},
				PropertyRule = new PlannerTaskPropertyRule
				{
					StartDate = new List<String>()
					{
						"allow"
					},
					DueDate = new List<String>()
					{
						"allow"
					},
					PercentComplete = new List<String>()
					{
						"allow"
					},
					Order = new List<String>()
					{
						"allow"
					},
					RuleKind = PlannerRuleKind.TaskRule,
					References = new PlannerFieldRules
					{
						DefaultRules = new List<String>()
						{
							"allow"
						},
						Overrides = new List<PlannerRuleOverride>()
						{
							new PlannerRuleOverride
							{
								Name = "userCreated",
								Rules = new List<PlannerRuleOverride>()
								{
									"allow"
								}
							},
							new PlannerRuleOverride
							{
								Name = "applicationCreated",
								Rules = new List<PlannerRuleOverride>()
								{
									"block"
								}
							}
						}
					},
					CheckLists = new PlannerFieldRules
					{
						DefaultRules = new List<String>()
						{
							"allow"
						},
						Overrides = new List<PlannerRuleOverride>()
						{
							new PlannerRuleOverride
							{
								Name = "userCreated",
								Rules = new List<PlannerRuleOverride>()
								{
									"allow"
								}
							},
							new PlannerRuleOverride
							{
								Name = "applicationCreated",
								Rules = new List<PlannerRuleOverride>()
								{
									"check"
								}
							}
						}
					},
					Assignments = new PlannerFieldRules
					{
						DefaultRules = new List<String>()
						{
							"block"
						},
						Overrides = new List<PlannerRuleOverride>()
						{
							new PlannerRuleOverride
							{
								Name = "userCreated",
								Rules = new List<PlannerRuleOverride>()
								{
									"removeSelf"
								}
							},
							new PlannerRuleOverride
							{
								Name = "applicationCreated",
								Rules = new List<PlannerRuleOverride>()
								{
									"check"
								}
							}
						}
					},
					AppliedCategories = new PlannerFieldRules
					{
						DefaultRules = new List<String>()
						{
							"allow"
						},
						Overrides = new List<PlannerRuleOverride>()
						{
						}
					}
				}
			}
		}
	}
};

await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.TaskConfiguration
	.Request()
	.UpdateAsync(plannerTaskConfiguration);

```