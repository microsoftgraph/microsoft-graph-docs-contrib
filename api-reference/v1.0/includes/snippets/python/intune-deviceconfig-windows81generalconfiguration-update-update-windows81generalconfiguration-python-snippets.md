---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows81_general_configuration import Windows81GeneralConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = Windows81GeneralConfiguration(
	odata_type = "#microsoft.graph.windows81GeneralConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	accounts_block_adding_non_microsoft_account_email = True,
	apply_only_to_windows81 = True,
	browser_block_autofill = True,
	browser_block_automatic_detection_of_intranet_sites = True,
	browser_block_enterprise_mode_access = True,
	browser_block_java_script = True,
	browser_block_plugins = True,
	browser_block_popups = True,
	browser_block_sending_do_not_track_header = True,
	browser_block_single_word_entry_on_intranet_sites = True,
	browser_require_smart_screen = True,
	browser_enterprise_mode_site_list_location = "Browser Enterprise Mode Site List Location value",
	browser_internet_security_level = InternetSiteSecurityLevel.Medium,
	browser_intranet_security_level = SiteSecurityLevel.Low,
	browser_logging_report_location = "Browser Logging Report Location value",
	browser_require_high_security_for_restricted_sites = True,
	browser_require_firewall = True,
	browser_require_fraud_warning = True,
	browser_trusted_sites_security_level = SiteSecurityLevel.Low,
	cellular_block_data_roaming = True,
	diagnostics_block_data_submission = True,
	password_block_picture_password_and_pin = True,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_screen_timeout = 14,
	password_minimum_character_set_count = 0,
	password_previous_password_block_count = 2,
	password_required_type = RequiredPasswordType.Alphanumeric,
	password_sign_in_failure_count_before_factory_reset = 12,
	storage_require_device_encryption = True,
	updates_require_automatic_updates = True,
	user_account_control_settings = WindowsUserAccountControlSettings.AlwaysNotify,
	work_folders_url = "https://example.com/workFoldersUrl/",
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```