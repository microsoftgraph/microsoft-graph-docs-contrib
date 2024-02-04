---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = DeploymentAudience(
)

result = await graph_client.admin.windows.updates.deployment_audiences.post(request_body)


```