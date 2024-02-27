---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workflow import Workflow
from msgraph.generated.models.on_demand_execution_only import OnDemandExecutionOnly
from msgraph.generated.models.task import Task
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = Workflow(
	category = LifecycleWorkflowCategory.Leaver,
	display_name = "Real-time employee termination",
	description = "Execute real-time termination tasks for employees on their last day of work",
	is_enabled = True,
	is_scheduling_enabled = False,
	execution_conditions = OnDemandExecutionOnly(
		odata_type = "#microsoft.graph.identityGovernance.onDemandExecutionOnly",
	),
	tasks = [
		Task(
			continue_on_error = False,
			description = "Remove user from all Azure AD groups memberships",
			display_name = "Remove user from all groups",
			execution_sequence = 1,
			is_enabled = True,
			task_definition_id = "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",
			arguments = [
			],
		),
		Task(
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