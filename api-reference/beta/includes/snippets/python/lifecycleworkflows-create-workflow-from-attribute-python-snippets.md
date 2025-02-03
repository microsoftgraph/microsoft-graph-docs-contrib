---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_governance.workflow import Workflow
from msgraph_beta.generated.models.lifecycle_workflow_category import LifecycleWorkflowCategory
from msgraph_beta.generated.models.identity_governance.trigger_and_scope_based_conditions import TriggerAndScopeBasedConditions
from msgraph_beta.generated.models.identity_governance.rule_based_subject_set import RuleBasedSubjectSet
from msgraph_beta.generated.models.identity_governance.attribute_change_trigger import AttributeChangeTrigger
from msgraph_beta.generated.models.identity_governance.trigger_attribute import TriggerAttribute
from msgraph_beta.generated.models.identity_governance.task import Task
from msgraph_beta.generated.models.key_value_pair import KeyValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Workflow(
	category = LifecycleWorkflowCategory.Mover,
	description = "Configure mover tasks for a user when their job profile changes",
	display_name = "Sales contractor moves to full-time employee",
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