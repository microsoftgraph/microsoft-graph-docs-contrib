---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.service_app import ServiceApp

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServiceApp(
)

result = await graph_client.solutions.backup_restore.service_apps.post(request_body)


```