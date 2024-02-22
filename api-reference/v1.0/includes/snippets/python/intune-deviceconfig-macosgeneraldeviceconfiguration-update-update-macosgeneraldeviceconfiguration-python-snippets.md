---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mac_o_s_general_device_configuration import MacOSGeneralDeviceConfiguration
from msgraph.generated.models.app_list_item import AppListItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = MacOSGeneralDeviceConfiguration(
	odata_type = "#microsoft.graph.macOSGeneralDeviceConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	compliant_apps_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	compliant_app_list_type = AppListType.AppsInListCompliant,
	email_in_domain_suffixes = [
		"Email In Domain Suffixes value",
	],
	password_block_simple = True,
	password_expiration_days = 6,
	password_minimum_character_set_count = 0,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_lock = 5,
	password_minutes_of_inactivity_before_screen_timeout = 14,
	password_previous_password_block_count = 2,
	password_required_type = RequiredPasswordType.Alphanumeric,
	password_required = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```