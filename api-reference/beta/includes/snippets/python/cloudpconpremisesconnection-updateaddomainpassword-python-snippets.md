---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.update_ad_domain_password_post_request_body import UpdateAdDomainPasswordPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateAdDomainPasswordPostRequestBody(
	ad_domain_password = "AdDomainPassword value",
)

await graph_client.device_management.virtual_endpoint.on_premises_connections.by_cloud_pc_on_premises_connection_id('cloudPcOnPremisesConnection-id').update_ad_domain_password.post(request_body)


```