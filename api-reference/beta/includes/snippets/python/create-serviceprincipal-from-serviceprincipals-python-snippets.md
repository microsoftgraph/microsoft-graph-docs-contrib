---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.service_principal import ServicePrincipal

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	app_id = "65415bb1-9267-4313-bbf5-ae259732ee12",
)

result = await graph_client.service_principals.post(request_body)


```