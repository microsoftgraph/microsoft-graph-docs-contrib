---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.shared_p_c_configuration import SharedPCConfiguration
from msgraph.generated.models.shared_p_c_account_manager_policy import SharedPCAccountManagerPolicy
from msgraph.generated.models.shared_p_c_account_deletion_policy_type import SharedPCAccountDeletionPolicyType
from msgraph.generated.models.shared_p_c_allowed_account_type import SharedPCAllowedAccountType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

result = await graph_client.device_management.device_configurations.post(request_body)


```