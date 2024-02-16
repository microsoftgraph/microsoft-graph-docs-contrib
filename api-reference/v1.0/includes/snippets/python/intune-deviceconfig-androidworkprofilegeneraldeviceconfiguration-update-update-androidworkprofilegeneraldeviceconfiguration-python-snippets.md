---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.android_work_profile_general_device_configuration import AndroidWorkProfileGeneralDeviceConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = AndroidWorkProfileGeneralDeviceConfiguration(
	odata_type = "#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	password_block_fingerprint_unlock = True,
	password_block_trust_agents = True,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_screen_timeout = 14,
	password_previous_password_block_count = 2,
	password_sign_in_failure_count_before_factory_reset = 12,
	password_required_type = AndroidWorkProfileRequiredPasswordType.LowSecurityBiometric,
	work_profile_data_sharing_type = AndroidWorkProfileCrossProfileDataSharingType.PreventAny,
	work_profile_block_notifications_while_device_locked = True,
	work_profile_block_adding_accounts = True,
	work_profile_bluetooth_enable_contact_sharing = True,
	work_profile_block_screen_capture = True,
	work_profile_block_cross_profile_caller_id = True,
	work_profile_block_camera = True,
	work_profile_block_cross_profile_contacts_search = True,
	work_profile_block_cross_profile_copy_paste = True,
	work_profile_default_app_permission_policy = AndroidWorkProfileDefaultAppPermissionPolicyType.Prompt,
	work_profile_password_block_fingerprint_unlock = True,
	work_profile_password_block_trust_agents = True,
	work_profile_password_expiration_days = 1,
	work_profile_password_minimum_length = 0,
	work_profile_password_min_numeric_characters = 7,
	work_profile_password_min_non_letter_characters = 9,
	work_profile_password_min_letter_characters = 6,
	work_profile_password_min_lower_case_characters = 9,
	work_profile_password_min_upper_case_characters = 9,
	work_profile_password_min_symbol_characters = 6,
	work_profile_password_minutes_of_inactivity_before_screen_timeout = 9,
	work_profile_password_previous_password_block_count = 13,
	work_profile_password_sign_in_failure_count_before_factory_reset = 7,
	work_profile_password_required_type = AndroidWorkProfileRequiredPasswordType.LowSecurityBiometric,
	work_profile_require_password = True,
	security_require_verify_apps = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```