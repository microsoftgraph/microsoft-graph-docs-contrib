---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.cross_tenant_access_settings import CrossTenantAccessSettings
from msgraph_beta.generated.models.status import Status

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessSettings(
	odata_type = "#microsoft.graph.networkaccess.crossTenantAccessSettings",
	network_packet_tagging_status = Status.Enabled,
)

result = await graph_client.network_access.settings.cross_tenant_access.patch(request_body)


```