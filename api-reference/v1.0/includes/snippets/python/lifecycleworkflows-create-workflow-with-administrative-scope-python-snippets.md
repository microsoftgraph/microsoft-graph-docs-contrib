---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_governance.workflow import Workflow
from msgraph.generated.models.lifecycle_workflow_category import LifecycleWorkflowCategory
from msgraph.generated.models.identity_governance.task import Task
from msgraph.generated.models.key_value_pair import KeyValuePair
from msgraph.generated.models.lifecycle_task_category import LifecycleTaskCategory
from msgraph.generated.models.identity_governance.on_demand_execution_only import OnDemandExecutionOnly
from msgraph.generated.models.directory_object import DirectoryObject
from msgraph.generated.models.administrative_unit import AdministrativeUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Workflow(
	category = LifecycleWorkflowCategory.Mover,
	display_name = "On Demand workflow move",
	description = "Execute real-time tasks for employee job changes",
	tasks = [
		Task(
			arguments = [
			],
			description = "Send email to notify user's manager of user move",
			display_name = "Send email to notify manager of user move",
			is_enabled = True,
			continue_on_error = False,
			task_definition_id = "aab41899-9972-422a-9d97-f626014578b7",
			category = LifecycleTaskCategory.Mover,
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
			id = "4f9dc456-0574-4122-9e55-8b4cc494b27d",
		),
		AdministrativeUnit(
			odata_type = "#microsoft.graph.administrativeUnit",
			id = "2c987843-e9b1-4b1a-b924-ff1d2a9b054d",
		),
	],
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.post(request_body)


```