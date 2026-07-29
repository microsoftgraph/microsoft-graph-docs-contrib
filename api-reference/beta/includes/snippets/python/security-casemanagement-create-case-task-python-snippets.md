---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.task import Task
from msgraph_beta.generated.models.task_status import TaskStatus
from msgraph_beta.generated.models.case_task_priority import CaseTaskPriority
from msgraph_beta.generated.models.case_task_category import CaseTaskCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Task(
	odata_type = "#microsoft.graph.security.caseManagement.task",
	display_name = "Validate affected devices",
	status = TaskStatus.New,
	description = "Review affected devices and collect evidence",
	assigned_to = "user@contoso.com",
	closing_notes = "Investigation completed and documented",
	due_date_time = "2026-06-29T17:54:43Z",
	priority = CaseTaskPriority.High,
	category = CaseTaskCategory.Investigate,
)

result = await graph_client.security.case_management.cases.by_case_id('case-id').tasks.post(request_body)


```