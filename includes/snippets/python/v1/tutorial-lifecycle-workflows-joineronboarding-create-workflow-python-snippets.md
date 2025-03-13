---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_governance.workflow import Workflow
from msgraph.generated.models.identity_governance.trigger_and_scope_based_conditions import TriggerAndScopeBasedConditions
from msgraph.generated.models.identity_governance.rule_based_subject_set import RuleBasedSubjectSet
from msgraph.generated.models.identity_governance.time_based_attribute_trigger import TimeBasedAttributeTrigger
from msgraph.generated.models.workflow_trigger_time_based_attribute import WorkflowTriggerTimeBasedAttribute
from msgraph.generated.models.identity_governance.task import Task
from msgraph.generated.models.lifecycle_task_category import LifecycleTaskCategory
from msgraph.generated.models.key_value_pair import KeyValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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