---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.directory_role import DirectoryRole

graph_client = GraphServiceClient(credentials, scopes)

request_body = DirectoryRole(
	role_template_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
)

result = await graph_client.directory_roles.post(request_body)


```