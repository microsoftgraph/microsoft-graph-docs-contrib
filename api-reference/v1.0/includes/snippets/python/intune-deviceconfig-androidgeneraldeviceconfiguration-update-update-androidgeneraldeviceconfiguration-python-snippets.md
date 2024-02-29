---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.android_general_device_configuration import AndroidGeneralDeviceConfiguration
from msgraph.generated.models.app_list_item import AppListItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = AndroidGeneralDeviceConfiguration(
	odata_type = "#microsoft.graph.androidGeneralDeviceConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	apps_block_clipboard_sharing = True,
	apps_block_copy_paste = True,
	apps_block_you_tube = True,
	bluetooth_blocked = True,
	camera_blocked = True,
	cellular_block_data_roaming = True,
	cellular_block_messaging = True,
	cellular_block_voice_roaming = True,
	cellular_block_wi_fi_tethering = True,
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
	location_services_blocked = True,
	google_account_block_auto_sync = True,
	google_play_store_blocked = True,
	kiosk_mode_block_sleep_button = True,
	kiosk_mode_block_volume_buttons = True,
	kiosk_mode_apps = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	nfc_blocked = True,
	password_block_fingerprint_unlock = True,
	password_block_trust_agents = True,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_screen_timeout = 14,
	password_previous_password_block_count = 2,
	password_sign_in_failure_count_before_factory_reset = 12,
	password_required_type = AndroidRequiredPasswordType.Alphabetic,
	password_required = True,
	power_off_blocked = True,
	factory_reset_blocked = True,
	screen_capture_blocked = True,
	device_sharing_allowed = True,
	storage_block_google_backup = True,
	storage_block_removable_storage = True,
	storage_require_device_encryption = True,
	storage_require_removable_storage_encryption = True,
	voice_assistant_blocked = True,
	voice_dialing_blocked = True,
	web_browser_block_popups = True,
	web_browser_block_autofill = True,
	web_browser_block_java_script = True,
	web_browser_blocked = True,
	web_browser_cookie_settings = WebBrowserCookieSettings.BlockAlways,
	wi_fi_blocked = True,
	apps_install_allow_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	apps_launch_block_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	apps_hide_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	security_require_verify_apps = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```