---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateAdDomainPasswordPostRequestBody()
request_body.ad_domain_password = 'AdDomainPassword value'




await client.device_management.virtual_endpoint.on_premise_connections.by_on_premise_connection_id('cloudPcOnPremisesConnection-id').update_ad_domain_password.post(request_body = request_body)


```