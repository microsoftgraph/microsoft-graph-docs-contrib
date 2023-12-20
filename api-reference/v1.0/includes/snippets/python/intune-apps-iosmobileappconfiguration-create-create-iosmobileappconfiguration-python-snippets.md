---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosMobileAppConfiguration(
	odata_type = "#microsoft.graph.iosMobileAppConfiguration",
	targeted_mobile_apps = [
		"Targeted Mobile Apps value",
	],
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	encoded_setting_xml = base64.urlsafe_b64decode("ZW5jb2RlZFNldHRpbmdYbWw="),
	settings = [
		AppConfigurationSettingItem(
			odata_type = "microsoft.graph.appConfigurationSettingItem",
			app_config_key = "App Config Key value",
			app_config_key_type = MdmAppConfigKeyType.IntegerType,
			app_config_key_value = "App Config Key Value value",
		),
	],
)

result = await graph_client.device_app_management.mobile_app_configurations.post(request_body)


```