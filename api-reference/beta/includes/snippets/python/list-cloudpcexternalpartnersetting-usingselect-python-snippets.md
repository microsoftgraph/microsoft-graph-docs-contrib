---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.external_partner_settings.external_partner_settings_request_builder import ExternalPartnerSettingsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ExternalPartnerSettingsRequestBuilder.ExternalPartnerSettingsRequestBuilderGetQueryParameters(
		select = ["id","partnerId","enableConnection"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.external_partner_settings.get(request_configuration = request_configuration)


```