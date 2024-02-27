---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.planner_task_configuration import PlannerTaskConfiguration
from msgraph.generated.models.planner_task_policy import PlannerTaskPolicy
from msgraph.generated.models.planner_task_role_based_rule import PlannerTaskRoleBasedRule
from msgraph.generated.models.planner_relationship_based_user_type import PlannerRelationshipBasedUserType
from msgraph.generated.models.planner_task_property_rule import PlannerTaskPropertyRule
from msgraph.generated.models.planner_field_rules import PlannerFieldRules
from msgraph.generated.models.planner_rule_override import PlannerRuleOverride

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerTaskConfiguration(
	odata_type = "#microsoft.graph.plannerTaskConfiguration",
	edit_policy = PlannerTaskPolicy(
		rules = [
			PlannerTaskRoleBasedRule(
				default_rule = "block",
				role = PlannerRelationshipBasedUserType(
					odata_type = "#microsoft.graph.plannerRelationshipBasedUserType",
					role_kind = PlannerUserRoleKind.Relationship,
					role = PlannerRelationshipUserRoles.DefaultRules,
				),
				property_rule = PlannerTaskPropertyRule(
					percent_complete = [
						"allow",
					],
					rule_kind = PlannerRuleKind.TaskRule,
					assignments = PlannerFieldRules(
						default_rules = [
							"addSelf",
						],
						overrides = [
						],
					),
				),
			),
			PlannerTaskRoleBasedRule(
				default_rule = "block",
				role = PlannerRelationshipBasedUserType(
					odata_type = "#microsoft.graph.plannerRelationshipBasedUserType",
					role_kind = PlannerUserRoleKind.Relationship,
					role = PlannerRelationshipUserRoles.TaskAssignees,
				),
				property_rule = PlannerTaskPropertyRule(
					start_date = [
						"allow",
					],
					due_date = [
						"allow",
					],
					percent_complete = [
						"allow",
					],
					order = [
						"allow",
					],
					rule_kind = PlannerRuleKind.TaskRule,
					references = PlannerFieldRules(
						default_rules = [
							"allow",
						],
						overrides = [
							PlannerRuleOverride(
								name = "userCreated",
								rules = [
									"allow",
								],
							),
							PlannerRuleOverride(
								name = "applicationCreated",
								rules = [
									"block",
								],
							),
						],
					),
					check_lists = PlannerFieldRules(
						default_rules = [
							"allow",
						],
						overrides = [
							PlannerRuleOverride(
								name = "userCreated",
								rules = [
									"allow",
								],
							),
							PlannerRuleOverride(
								name = "applicationCreated",
								rules = [
									"check",
								],
							),
						],
					),
					assignments = PlannerFieldRules(
						default_rules = [
							"block",
						],
						overrides = [
							PlannerRuleOverride(
								name = "userCreated",
								rules = [
									"removeSelf",
								],
							),
							PlannerRuleOverride(
								name = "applicationCreated",
								rules = [
									"check",
								],
							),
						],
					),
					applied_categories = PlannerFieldRules(
						default_rules = [
							"allow",
						],
						overrides = [
						],
					),
				),
			),
		],
	),
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.task_configuration.patch(request_body)


```