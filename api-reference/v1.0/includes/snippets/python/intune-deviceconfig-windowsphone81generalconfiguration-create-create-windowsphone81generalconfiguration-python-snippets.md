---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows_phone81_general_configuration import WindowsPhone81GeneralConfiguration
from msgraph.generated.models.app_list_item import AppListItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsPhone81GeneralConfiguration(
	odata_type = "#microsoft.graph.windowsPhone81GeneralConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	apply_only_to_windows_phone81 = True,
	apps_block_copy_paste = True,
	bluetooth_blocked = True,
	camera_blocked = True,
	cellular_block_wifi_tethering = True,
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
	diagnostic_data_block_submission = True,
	email_block_adding_accounts = True,
	location_services_blocked = True,
	microsoft_account_blocked = True,
	nfc_blocked = True,
	password_block_simple = True,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_screen_timeout = 14,
	password_minimum_character_set_count = 0,
	password_previous_password_block_count = 2,
	password_sign_in_failure_count_before_factory_reset = 12,
	password_required_type = RequiredPasswordType.Alphanumeric,
	password_required = True,
	screen_capture_blocked = True,
	storage_block_removable_storage = True,
	storage_require_encryption = True,
	web_browser_blocked = True,
	wifi_blocked = True,
	wifi_block_automatic_connect_hotspots = True,
	wifi_block_hotspot_reporting = True,
	windows_store_blocked = True,
)

result = await graph_client.device_management.device_configurations.post(request_body)


```