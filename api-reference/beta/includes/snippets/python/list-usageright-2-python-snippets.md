---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = UsageRightsRequestBuilder.UsageRightsRequestBuilderGetQueryParameters(
		filter = "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')",
)

request_configuration = UsageRightsRequestBuilder.UsageRightsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.devices.by_device_id('device-id').usage_rights.get(request_configuration = request_configuration)


```