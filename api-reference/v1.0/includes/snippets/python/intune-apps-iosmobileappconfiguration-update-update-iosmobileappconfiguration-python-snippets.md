---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.ios_mobile_app_configuration import IosMobileAppConfiguration
from msgraph.generated.models.app_configuration_setting_item import AppConfigurationSettingItem
from msgraph.generated.models.mdm_app_config_key_type import MdmAppConfigKeyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

result = await graph_client.device_app_management.mobile_app_configurations.by_managed_device_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').patch(request_body)


```