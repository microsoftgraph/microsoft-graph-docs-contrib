---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workflow import Workflow
from msgraph.generated.models.trigger_and_scope_based_conditions import TriggerAndScopeBasedConditions
from msgraph.generated.models.rule_based_subject_set import RuleBasedSubjectSet
from msgraph.generated.models.time_based_attribute_trigger import TimeBasedAttributeTrigger
from msgraph.generated.models.task import Task
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = Workflow(
	category = LifecycleWorkflowCategory.Joiner,
	description = "Configure new hire tasks for onboarding employees on their first day",
	display_name = "custom email marketing API test",
	is_enabled = True,
	is_scheduling_enabled = False,
	execution_conditions = TriggerAndScopeBasedConditions(
		odata_type = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		scope = RuleBasedSubjectSet(
			odata_type = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			rule = "(department eq 'Marketing')",
		),
		trigger = TimeBasedAttributeTrigger(
			odata_type = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
			time_based_attribute = WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
			offset_in_days = 0,
		),
	),
	tasks = [
		Task(
			continue_on_error = False,
			description = "Enable user account in the directory",
			display_name = "Enable User Account",
			is_enabled = True,
			task_definition_id = "6fc52c9d-398b-4305-9763-15f42c1676fc",
			arguments = [
			],
		),
		Task(
			continue_on_error = False,
			description = "Send welcome email to new hire",
			display_name = "Send Welcome Email",
			is_enabled = True,
			task_definition_id = "70b29d51-b59a-4773-9280-8841dfd3f2ea",
			arguments = [
				KeyValuePair(
					name = "cc",
					value = "1baa57fa-3c4e-4526-ba5a-db47a9df95f0",
				),
				KeyValuePair(
					name = "customSubject",
					value = "Welcome to the organization {{userDisplayName}}!",
				),
				KeyValuePair(
					name = "customBody",
					value = "Welcome to our organization {{userGivenName}}!",
				),
				KeyValuePair(
					name = "locale",
					value = "en-us",
				),
			],
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```