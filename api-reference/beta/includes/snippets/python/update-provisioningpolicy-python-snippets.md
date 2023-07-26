---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcProvisioningPolicy()
request_body.@odata_type = '#microsoft.graph.cloudPcProvisioningPolicy'

request_body.display_name = 'HR provisioning policy'

request_body.description = 'Provisioning policy for India HR employees'

request_body.on_premises_connection_id = '4e47d0f6-6f77-44f0-8893-c0fe1701ffff'

request_body.image_id = 'Image ID value'

request_body.image_display_name = 'Image Display Name value'

request_body.imagetype(CloudPcProvisioningPolicyImageType.Custom('cloudpcprovisioningpolicyimagetype.custom'))

windows_settings = CloudPcWindowsSettings()
windows_settings.language = 'en-US'


request_body.windows_settings = windows_settings



result = await client.device_management.virtual_endpoint.provisioning_policies.by_provisioning_policie_id('cloudPcProvisioningPolicy-id').patch(request_body = request_body)


```