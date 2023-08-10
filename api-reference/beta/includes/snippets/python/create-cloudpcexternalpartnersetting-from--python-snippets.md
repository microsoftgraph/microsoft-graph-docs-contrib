---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcExternalPartnerSetting()
request_body.@odata_type = '#microsoft.graph.cloudPcExternalPartnerSetting'

request_body.partner_id = '198d7140-80bb-4843-8cc4-811377a49a92'

request_body.enable_connection = True




result = await client.device_management.virtual_endpoint.external_partner_settings.post(request_body = request_body)


```