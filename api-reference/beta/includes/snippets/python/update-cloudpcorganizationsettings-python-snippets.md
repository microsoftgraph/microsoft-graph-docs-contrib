---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcOrganizationSettings()
request_body.@odata_type = '#microsoft.graph.cloudPcOrganizationSettings'

request_body.enable_m_e_m_auto_enroll = True

request_body.osversion(CloudPcOperatingSystem.Windows11('cloudpcoperatingsystem.windows11'))

request_body.useraccounttype(CloudPcUserAccountType.StandardUser('cloudpcuseraccounttype.standarduser'))

windows_settings = CloudPcWindowsSettings()
windows_settings.language = 'en-US'


request_body.windows_settings = windows_settings



result = await client.device_management.virtual_endpoint.organization_settings.patch(request_body = request_body)


```