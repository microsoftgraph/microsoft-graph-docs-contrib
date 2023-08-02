---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Windows10CustomConfiguration()
request_body.@odata_type = '#microsoft.graph.windows10CustomConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

oma_settings_oma_setting1 = OmaSetting()
oma_settings_oma_setting1.@odata_type = 'microsoft.graph.omaSetting'

oma_settings_oma_setting1.display_name = 'Display Name value'

oma_settings_oma_setting1.description = 'Description value'

oma_settings_oma_setting1.oma_uri = 'Oma Uri value'


omaSettingsArray []= omaSettingsOmaSetting1;
request_body.omasettings(omaSettingsArray)





result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```