---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.service_principal import ServicePrincipal

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	preferred_token_signing_key_thumbprint = "5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```