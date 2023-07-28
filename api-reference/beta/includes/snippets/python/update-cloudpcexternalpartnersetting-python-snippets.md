---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcExternalPartnerSetting()
request_body.@odata_type = '#microsoft.graph.cloudPcExternalPartnerSetting'

request_body.enable_connection = True




result = await client.device_management.virtual_endpoint.external_partner_settings.by_external_partner_setting_id('cloudPcExternalPartnerSetting-id').patch(request_body = request_body)


```