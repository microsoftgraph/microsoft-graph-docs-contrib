---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_compliance_policy import Windows10CompliancePolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = Windows10CompliancePolicy(
	odata_type = "#microsoft.graph.windows10CompliancePolicy",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	password_required = True,
	password_block_simple = True,
	password_required_to_unlock_from_idle = True,
	password_minutes_of_inactivity_before_lock = 5,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minimum_character_set_count = 0,
	password_required_type = RequiredPasswordType.Alphanumeric,
	password_previous_password_block_count = 2,
	require_healthy_device_report = True,
	os_minimum_version = "Os Minimum Version value",
	os_maximum_version = "Os Maximum Version value",
	mobile_os_minimum_version = "Mobile Os Minimum Version value",
	mobile_os_maximum_version = "Mobile Os Maximum Version value",
	early_launch_anti_malware_driver_enabled = True,
	bit_locker_enabled = True,
	secure_boot_enabled = True,
	code_integrity_enabled = True,
	storage_require_encryption = True,
)

result = await graph_client.device_management.device_compliance_policies.post(request_body)


```