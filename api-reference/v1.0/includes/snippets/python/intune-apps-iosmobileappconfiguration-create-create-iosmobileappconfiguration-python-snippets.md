---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IosMobileAppConfiguration()
request_body.@odata_type = '#microsoft.graph.iosMobileAppConfiguration'

request_body.TargetedMobileApps(['Targeted Mobile Apps value', ])

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.EncodedSettingXml(base64_decode('ZW5jb2RlZFNldHRpbmdYbWw='))

settings_app_configuration_setting_item1 = AppConfigurationSettingItem()
settings_app_configuration_setting_item1.@odata_type = 'microsoft.graph.appConfigurationSettingItem'

settings_app_configuration_setting_item1.app_config_key = 'App Config Key value'

settings_app_configuration_setting_item1.appconfigkeytype(MdmAppConfigKeyType.IntegerType('mdmappconfigkeytype.integertype'))

settings_app_configuration_setting_item1.app_config_key_value = 'App Config Key Value value'


settingsArray []= settingsAppConfigurationSettingItem1;
request_body.settings(settingsArray)





result = await client.device_app_management.mobile_app_configurations.post(request_body = request_body)


```