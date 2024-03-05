---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.service_announcement.issues.by_service_health_issue_id('serviceHealthIssue-id').get()


```