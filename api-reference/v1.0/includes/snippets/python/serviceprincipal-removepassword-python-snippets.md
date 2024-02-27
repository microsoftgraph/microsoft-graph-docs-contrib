---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remove_password_post_request_body import RemovePasswordPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemovePasswordPostRequestBody(
	key_id = UUID("f0b0b335-1d71-4883-8f98-567911bfdca6"),
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remove_password.post(request_body)


```