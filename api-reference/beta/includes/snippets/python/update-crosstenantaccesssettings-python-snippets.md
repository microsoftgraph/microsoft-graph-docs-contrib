---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CrossTenantAccessSettings(
	odata_type = "#microsoft.graph.networkaccess.crossTenantAccessSettings",
	network_packet_tagging_status = Status.Enabled,
)

result = await graph_client.network_access.settings.cros_tenant_access.patch(body = request_body)


```