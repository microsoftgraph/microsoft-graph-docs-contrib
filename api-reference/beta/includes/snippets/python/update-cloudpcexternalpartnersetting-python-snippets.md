---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_external_partner_setting import CloudPcExternalPartnerSetting

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcExternalPartnerSetting(
	odata_type = "#microsoft.graph.cloudPcExternalPartnerSetting",
	enable_connection = True,
)

result = await graph_client.device_management.virtual_endpoint.external_partner_settings.by_cloud_pc_external_partner_setting_id('cloudPcExternalPartnerSetting-id').patch(request_body)


```