---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.service_principal import ServicePrincipal

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	preferred_single_sign_on_mode = "saml",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```