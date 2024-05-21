---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.service_principals_with_app_id.service_principals_with_app_id_request_builder import ServicePrincipalsWithAppIdRequestBuilder
from msgraph.generated.models.service_principal import ServicePrincipal

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	display_name = "My app instance",
)

request_configuration = ServicePrincipalsWithAppIdRequestBuilder.ServicePrincipalsWithAppIdRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "create-if-missing")


result = await graph_client.service_principals_with_app_id("{appId}").patch(request_body, request_configuration = request_configuration)


```