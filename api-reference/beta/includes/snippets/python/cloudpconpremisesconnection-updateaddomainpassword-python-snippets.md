---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UpdateAdDomainPasswordPostRequestBody(
	ad_domain_password = "AdDomainPassword value",
)

await graph_client.device_management.virtual_endpoint.on_premise_connections.by_on_premise_connection_id('cloudPcOnPremisesConnection-id').update_ad_domain_password.post(body = request_body)


```