---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.lifecycle_workflows.insights.microsoft_graph_identity_governance_workflows_processed_by_category_with_start_date_time_with_end_date_time("{endDateTime}","{startDateTime}").get()


```