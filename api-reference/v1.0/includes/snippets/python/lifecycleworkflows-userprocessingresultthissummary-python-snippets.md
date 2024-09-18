---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').user_processing_results.microsoft_graph_identity_governance_summary_with_start_date_time_with_end_date_time("{endDateTime}","{startDateTime}").get()


```