---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.role_management_alerts.operations.by_long_running_operation_id('longRunningOperation-id').get()


```