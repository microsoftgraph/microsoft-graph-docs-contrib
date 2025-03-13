---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_mobile_compliance_policy import Windows10MobileCompliancePolicy
from msgraph.generated.models.required_password_type import RequiredPasswordType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Windows10MobileCompliancePolicy(
	odata_type = "#microsoft.graph.windows10MobileCompliancePolicy",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	password_required = True,
	password_block_simple = True,
	password_minimum_length = 5,
	password_minimum_character_set_count = 0,
	password_required_type = RequiredPasswordType.Alphanumeric,
	password_previous_password_block_count = 2,
	password_expiration_days = 6,
	password_minutes_of_inactivity_before_lock = 5,
	password_require_to_unlock_from_idle = True,
	os_minimum_version = "Os Minimum Version value",
	os_maximum_version = "Os Maximum Version value",
	early_launch_anti_malware_driver_enabled = True,
	bit_locker_enabled = True,
	secure_boot_enabled = True,
	code_integrity_enabled = True,
	storage_require_encryption = True,
)

result = await graph_client.device_management.device_compliance_policies.post(request_body)


```