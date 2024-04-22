---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workflow import Workflow
from msgraph.generated.models.trigger_and_scope_based_conditions import TriggerAndScopeBasedConditions
from msgraph.generated.models.rule_based_subject_set import RuleBasedSubjectSet
from msgraph.generated.models.attribute_change_trigger import AttributeChangeTrigger
from msgraph.generated.models.trigger_attribute import TriggerAttribute
from msgraph.generated.models.task import Task
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = Workflow(
	category = LifecycleWorkflowCategory.Mover,
	description = "Configure mover tasks for a user moved to the Sales department.",
	display_name = "Added to Sales department workflow",
	is_enabled = True,
	is_scheduling_enabled = True,
	execution_conditions = TriggerAndScopeBasedConditions(
		odata_type = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		scope = RuleBasedSubjectSet(
			odata_type = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			rule = "(department eq 'Sales')",
		),
		trigger = AttributeChangeTrigger(
			odata_type = "#microsoft.graph.identityGovernance.attributeChangeTrigger",
			trigger_attributes = [
				TriggerAttribute(
					name = "department",
				),
			],
		),
	),
	tasks = [
		Task(
			continue_on_error = False,
			description = "Send email to moving employee's manager",
			display_name = "Notify manager of move",
			is_enabled = True,
			task_definition_id = "aab41899-9972-422a-9d97-f626014578b7",
			arguments = [
			],
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```