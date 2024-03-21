---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.windows.updates.deployment_audiences.by_deployment_audience_id('deploymentAudience-id').exclusions.get()


```