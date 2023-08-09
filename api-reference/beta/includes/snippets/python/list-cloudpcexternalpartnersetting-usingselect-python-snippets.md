---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ExternalPartnerSettingsRequestBuilder.ExternalPartnerSettingsRequestBuilderGetQueryParameters(
		select = ["id","partnerId","enableConnection"],
)

request_configuration = ExternalPartnerSettingsRequestBuilder.ExternalPartnerSettingsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.device_management.virtual_endpoint.external_partner_settings.get(request_configuration = request_configuration)


```