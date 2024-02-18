---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.shared_p_c_configuration import SharedPCConfiguration
from msgraph.generated.models.shared_p_c_account_manager_policy import SharedPCAccountManagerPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = SharedPCConfiguration(
	odata_type = "#microsoft.graph.sharedPCConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	account_manager_policy = SharedPCAccountManagerPolicy(
		odata_type = "microsoft.graph.sharedPCAccountManagerPolicy",
		account_deletion_policy = SharedPCAccountDeletionPolicyType.DiskSpaceThreshold,
		cache_accounts_above_disk_free_percentage = 4,
		inactive_threshold_days = 5,
		remove_accounts_below_disk_free_percentage = 5,
	),
	allowed_accounts = SharedPCAllowedAccountType.Domain,
	allow_local_storage = True,
	disable_account_manager = True,
	disable_edu_policies = True,
	disable_power_policies = True,
	disable_sign_in_on_resume = True,
	enabled = True,
	idle_time_before_sleep_in_seconds = 12,
	kiosk_app_display_name = "Kiosk App Display Name value",
	kiosk_app_user_model_id = "Kiosk App User Model Id value",
	maintenance_start_time = "11:59:24.7240000",
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```