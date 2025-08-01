---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.incident_task import IncidentTask
from msgraph_beta.generated.models.incident_task_status import IncidentTaskStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IncidentTask(
	status = IncidentTaskStatus.Completed,
)

result = await graph_client.security.incident_tasks.by_incident_task_id('incidentTask-id').patch(request_body)


```