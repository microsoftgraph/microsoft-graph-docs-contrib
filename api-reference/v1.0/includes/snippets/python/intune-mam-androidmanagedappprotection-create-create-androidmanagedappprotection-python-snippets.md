---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.android_managed_app_protection import AndroidManagedAppProtection
from msgraph.generated.models.managed_app_data_storage_location import ManagedAppDataStorageLocation

graph_client = GraphServiceClient(credentials, scopes)

request_body = AndroidManagedAppProtection(
	odata_type = "#microsoft.graph.androidManagedAppProtection",
	display_name = "Display Name value",
	description = "Description value",
	version = "Version value",
	period_offline_before_access_check = "-PT17.1357909S",
	period_online_before_access_check = "PT35.0018757S",
	allowed_inbound_data_transfer_sources = ManagedAppDataTransferLevel.ManagedApps,
	allowed_outbound_data_transfer_destinations = ManagedAppDataTransferLevel.ManagedApps,
	organizational_credentials_required = True,
	allowed_outbound_clipboard_sharing_level = ManagedAppClipboardSharingLevel.ManagedAppsWithPasteIn,
	data_backup_blocked = True,
	device_compliance_required = True,
	managed_browser_to_open_links_required = True,
	save_as_blocked = True,
	period_offline_before_wipe_is_enforced = "-PT3M22.1587532S",
	pin_required = True,
	maximum_pin_retries = 1,
	simple_pin_blocked = True,
	minimum_pin_length = 0,
	pin_character_set = ManagedAppPinCharacterSet.AlphanumericAndSymbol,
	period_before_pin_reset = "PT3M29.6631862S",
	allowed_data_storage_locations = [
		ManagedAppDataStorageLocation.SharePoint,
	],
	contact_sync_blocked = True,
	print_blocked = True,
	fingerprint_blocked = True,
	disable_app_pin_if_device_pin_is_set = True,
	minimum_required_os_version = "Minimum Required Os Version value",
	minimum_warning_os_version = "Minimum Warning Os Version value",
	minimum_required_app_version = "Minimum Required App Version value",
	minimum_warning_app_version = "Minimum Warning App Version value",
	managed_browser = ManagedBrowserType.MicrosoftEdge,
	is_assigned = True,
	screen_capture_blocked = True,
	disable_app_encryption_if_device_encryption_is_enabled = True,
	encrypt_app_data = True,
	deployed_app_count = 0,
	minimum_required_patch_version = "Minimum Required Patch Version value",
	minimum_warning_patch_version = "Minimum Warning Patch Version value",
	custom_browser_package_id = "Custom Browser Package Id value",
	custom_browser_display_name = "Custom Browser Display Name value",
)

result = await graph_client.device_app_management.android_managed_app_protections.post(request_body)


```