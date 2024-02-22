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
	category = LifecycleWorkflowCategory.Leaver,
	display_name = "Post-Offboarding of an employee",
	description = "Configure offboarding tasks for employees after their last day of work",
	is_enabled = True,
	is_scheduling_enabled = False,
	execution_conditions = TriggerAndScopeBasedConditions(
		odata_type = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		scope = RuleBasedSubjectSet(
			odata_type = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			rule = "department eq 'Marketing'",
		),
		trigger = TimeBasedAttributeTrigger(
			odata_type = "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
			time_based_attribute = WorkflowTriggerTimeBasedAttribute.EmployeeLeaveDateTime,
			offset_in_days = 7,
		),
	),
	tasks = [
		Task(
			category = LifecycleTaskCategory.Leaver,
			continue_on_error = False,
			description = "Remove all licenses assigned to the user",
			display_name = "Remove all licenses for user",
			execution_sequence = 1,
			is_enabled = True,
			task_definition_id = "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
			arguments = [
			],
		),
		Task(
			category = LifecycleTaskCategory.Leaver,
			continue_on_error = False,
			description = "Remove user from all Teams memberships",
			display_name = "Remove user from all Teams",
			execution_sequence = 2,
			is_enabled = True,
			task_definition_id = "81f7b200-2816-4b3b-8c5d-dc556f07b024",
			arguments = [
			],
		),
		Task(
			category = LifecycleTaskCategory.Leaver,
			continue_on_error = False,
			description = "Delete user account in Azure AD",
			display_name = "Delete User Account",
			execution_sequence = 3,
			is_enabled = True,
			task_definition_id = "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
			arguments = [
			],
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```