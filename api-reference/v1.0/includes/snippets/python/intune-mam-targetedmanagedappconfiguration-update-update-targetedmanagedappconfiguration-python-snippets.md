---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TargetedManagedAppConfiguration()
request_body.@odata_type = '#microsoft.graph.targetedManagedAppConfiguration'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.version = 'Version value'

custom_settings_key_value_pair1 = KeyValuePair()
custom_settings_key_value_pair1.@odata_type = 'microsoft.graph.keyValuePair'

custom_settings_key_value_pair1.name = 'Name value'

custom_settings_key_value_pair1.value = 'Value value'


customSettingsArray []= customSettingsKeyValuePair1;
request_body.customsettings(customSettingsArray)


request_body.DeployedAppCount = 0

request_body.is_assigned = True




result = await client.device_app_management.targeted_managed_app_configurations.by_targeted_managed_app_configuration_id('targetedManagedAppConfiguration-id').patch(request_body = request_body)


```