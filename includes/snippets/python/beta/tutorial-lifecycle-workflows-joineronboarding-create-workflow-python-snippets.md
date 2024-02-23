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
	display_name = "Onboard pre-hire employee",
	description = "Configure pre-hire tasks for onboarding employees before their first day",
	is_enabled = True,
	is_scheduling_enabled = False,
	execution_conditions = TriggerAndScopeBasedConditions(
		odata_type = "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		scope = RuleBasedSubjectSet(
			odata_type = "microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			rule = "(department eq 'Sales')",
		),
		trigger = TimeBasedAttributeTrigger(
			odata_type = "microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
			time_based_attribute = WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
			offset_in_days = -2,
		),
	),
	tasks = [
		Task(
			is_enabled = True,
			category = LifecycleTaskCategory.Joiner,
			task_definition_id = "1b555e50-7f65-41d5-b514-5894a026d10d",
			display_name = "Generate TAP And Send Email",
			description = "Generate Temporary Access Pass and send via email to user's manager",
			arguments = [
				KeyValuePair(
					name = "tapLifetimeMinutes",
					value = "480",
				),
				KeyValuePair(
					name = "tapIsUsableOnce",
					value = "true",
				),
			],
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```