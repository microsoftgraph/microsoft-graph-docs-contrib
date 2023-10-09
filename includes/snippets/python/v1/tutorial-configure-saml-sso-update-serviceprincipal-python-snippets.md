---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ServicePrincipal(
	preferred_single_sign_on_mode = "saml",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(body = request_body)


```