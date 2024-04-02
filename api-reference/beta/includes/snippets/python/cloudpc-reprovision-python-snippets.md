---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.reprovision_post_request_body import ReprovisionPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReprovisionPostRequestBody(
	user_account_type = CloudPcUserAccountType.Administrator,
	os_version = CloudPcOperatingSystem.Windows10,
)

await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').reprovision.post(request_body)


```