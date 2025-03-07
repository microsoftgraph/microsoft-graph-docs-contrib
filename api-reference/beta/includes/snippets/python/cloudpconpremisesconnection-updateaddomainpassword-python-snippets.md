---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.onpremisesconnections.item.update_ad_domain_password.update_ad_domain_password_post_request_body import UpdateAdDomainPasswordPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateAdDomainPasswordPostRequestBody(
	ad_domain_password = "AdDomainPassword value",
)

await graph_client.device_management.virtual_endpoint.on_premises_connections.by_cloud_pc_on_premises_connection_id('cloudPcOnPremisesConnection-id').update_ad_domain_password.post(request_body)


```