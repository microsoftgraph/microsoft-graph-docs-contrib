---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_create_new_version.create_new_version_post_request_body import CreateNewVersionPostRequestBody
from msgraph_beta.generated.models.identity_governance.workflow import Workflow
from msgraph_beta.generated.models.lifecycle_workflow_category import LifecycleWorkflowCategory
from msgraph_beta.generated.models.identity_governance.task import Task
from msgraph_beta.generated.models.lifecycle_task_category import LifecycleTaskCategory
from msgraph_beta.generated.models.key_value_pair import KeyValuePair
from msgraph_beta.generated.models.identity_governance.on_demand_execution_only import OnDemandExecutionOnly
from msgraph_beta.generated.models.directory_object import DirectoryObject
from msgraph_beta.generated.models.administrative_unit import AdministrativeUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateNewVersionPostRequestBody(
	workflow = Workflow(
		category = LifecycleWorkflowCategory.Mover,
		display_name = "On Demand mover workflow",
		description = "Execute real-time tasks for employee job changes",
		tasks = [
			Task(
				category = LifecycleTaskCategory.Mover,
				continue_on_error = False,
				description = "Send email to notify user’s manager of user move",
				display_name = "Send email to notify manager of user move",
				execution_sequence = 1,
				id = "f09eb640-6c16-4f1a-8b48-6a295a307705",
				is_enabled = True,
				task_definition_id = "aab41899-9972-422a-9d97-f626014578b7",
				arguments = [
				],
			),
			Task(
				arguments = [
					KeyValuePair(
						name = "groupID",
						value = "8d1d1deb-2ef0-4f72-a460-729a1cc74e7e",
					),
				],
				description = "Add user to selected groups",
				display_name = "Add user to groups",
				is_enabled = True,
				continue_on_error = False,
				task_definition_id = "22085229-5809-45e8-97fd-270d28d66910",
				category = LifecycleTaskCategory.Joiner | LifecycleTaskCategory.Leaver | LifecycleTaskCategory.Mover,
			),
		],
		execution_conditions = OnDemandExecutionOnly(
			odata_type = "#microsoft.graph.identityGovernance.onDemandExecutionOnly",
		),
		is_enabled = True,
		is_scheduling_enabled = False,
		administration_scope_targets = [
			AdministrativeUnit(
				odata_type = "#microsoft.graph.administrativeUnit",
				id = "2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7",
			),
		],
	),
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_create_new_version.post(request_body)


```