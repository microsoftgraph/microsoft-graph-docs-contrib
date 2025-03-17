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
from msgraph_beta.generated.models.identity_governance.time_based_attribute_trigger import TimeBasedAttributeTrigger
from msgraph_beta.generated.models.workflow_trigger_time_based_attribute import WorkflowTriggerTimeBasedAttribute
from msgraph_beta.generated.models.identity_governance.task import Task
from msgraph_beta.generated.models.key_value_pair import KeyValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Workflow(
	category = LifecycleWorkflowCategory.Joiner,
	description = "Configure new hire tasks for onboarding employees on their first day",
	display_name = "Australia Onboard new hire employee",
	is_enabled = True,
	is_scheduling_enabled = True,
	execution_conditions = TriggerAndScopeBasedConditions(
		odata_type = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		scope = RuleBasedSubjectSet(
			odata_type = "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
			rule = "(country eq 'Australia')",
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
			],
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```