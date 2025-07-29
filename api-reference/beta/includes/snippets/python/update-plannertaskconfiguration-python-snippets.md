---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.business_scenarios.item.planner.task_configuration.task_configuration_request_builder import TaskConfigurationRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.planner_task_configuration import PlannerTaskConfiguration
from msgraph_beta.generated.models.planner_task_policy import PlannerTaskPolicy
from msgraph_beta.generated.models.planner_task_role_based_rule import PlannerTaskRoleBasedRule
from msgraph_beta.generated.models.planner_task_property_rule import PlannerTaskPropertyRule
from msgraph_beta.generated.models.planner_rule_kind import PlannerRuleKind
from msgraph_beta.generated.models.planner_field_rules import PlannerFieldRules
from msgraph_beta.generated.models.planner_rule_override import PlannerRuleOverride
from msgraph_beta.generated.models.planner_relationship_based_user_type import PlannerRelationshipBasedUserType
from msgraph_beta.generated.models.planner_relationship_user_roles import PlannerRelationshipUserRoles
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerTaskConfiguration(
	edit_policy = PlannerTaskPolicy(
		rules = [
			PlannerTaskRoleBasedRule(
				default_rule = "block",
				property_rule = PlannerTaskPropertyRule(
					rule_kind = PlannerRuleKind.TaskRule,
					references = PlannerFieldRules(
						default_rules = [
							"allow",
						],
						overrides = [
						],
					),
					check_lists = PlannerFieldRules(
						default_rules = [
							"allow",
						],
						overrides = [
						],
					),
					assignments = PlannerFieldRules(
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
									"allow",
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
				additional_data = {
						"user_type" : {
								"@odata_type" : "#microsoft.graph.plannerRelationshipBasedUserType",
								"role" : PlannerRelationshipUserRoles.DefaultRules,
								"additional_data" : {
										"selection_kind" : "relationship",
								},
						},
				}
			),
		],
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.task_configuration.patch(request_body, request_configuration = request_configuration)


```