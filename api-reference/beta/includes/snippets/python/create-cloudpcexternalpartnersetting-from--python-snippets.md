---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_external_partner_setting import CloudPcExternalPartnerSetting

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcExternalPartnerSetting(
	odata_type = "#microsoft.graph.cloudPcExternalPartnerSetting",
	partner_id = "198d7140-80bb-4843-8cc4-811377a49a92",
	enable_connection = True,
)

result = await graph_client.device_management.virtual_endpoint.external_partner_settings.post(request_body)


```