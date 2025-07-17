---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_external_partner_setting import CloudPcExternalPartnerSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcExternalPartnerSetting(
	odata_type = "#microsoft.graph.cloudPcExternalPartnerSetting",
	partner_id = "198d7140-80bb-4843-8cc4-811377a49a92",
	enable_connection = True,
)

result = await graph_client.device_management.virtual_endpoint.external_partner_settings.post(request_body)


```