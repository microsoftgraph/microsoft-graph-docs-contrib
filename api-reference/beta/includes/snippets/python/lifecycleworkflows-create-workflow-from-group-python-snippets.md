---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workflow import Workflow
from msgraph.generated.models.trigger_and_scope_based_conditions import TriggerAndScopeBasedConditions
from msgraph.generated.models.group_based_subject_set import GroupBasedSubjectSet
from msgraph.generated.models.group import Group
from msgraph.generated.models.membership_change_trigger import MembershipChangeTrigger
from msgraph.generated.models.task import Task
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = Workflow(
	category = LifecycleWorkflowCategory.Leaver,
	description = "Configure offboarding tasks for employees on their last day of work",
	display_name = "Offboard an employee",
	is_enabled = True,
	is_scheduling_enabled = True,
	execution_conditions = TriggerAndScopeBasedConditions(
		odata_type = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
		scope = GroupBasedSubjectSet(
			odata_type = "#microsoft.graph.identityGovernance.groupBasedSubjectSet",
			groups = [
				Group(
					id = "668e7540-7f8e-4ca4-a207-b7dffbb6d038",
				),
			],
		),
		trigger = MembershipChangeTrigger(
			odata_type = "#microsoft.graph.identityGovernance.membershipChangeTrigger",
			change_type = MembershipChangeType.Remove,
		),
	),
	tasks = [
		Task(
			category = LifecycleTaskCategory.Leaver,
			continue_on_error = False,
			description = "Remove user from all Teams memberships",
			display_name = "Remove user from all Teams",
			is_enabled = True,
			task_definition_id = "81f7b200-2816-4b3b-8c5d-dc556f07b024",
			arguments = [
			],
		),
		Task(
			category = LifecycleTaskCategory.Leaver,
			continue_on_error = False,
			description = "Remove user from all Azure AD groups memberships",
			display_name = "Remove user from all groups",
			is_enabled = True,
			task_definition_id = "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
			arguments = [
			],
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```