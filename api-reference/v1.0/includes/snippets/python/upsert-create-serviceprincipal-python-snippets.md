---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.service_principals_with_app_id.service_principals_with_app_id_request_builder import ServicePrincipalsWithAppIdRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.service_principal import ServicePrincipal
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ServicePrincipal(
	display_name = "My app instance",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "create-if-missing")


result = await graph_client.service_principals_with_app_id("{appId}").patch(request_body, request_configuration = request_configuration)


```