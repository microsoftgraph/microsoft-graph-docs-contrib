---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mac_o_s_compliance_policy import MacOSCompliancePolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = MacOSCompliancePolicy(
	odata_type = "#microsoft.graph.macOSCompliancePolicy",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	password_required = True,
	password_block_simple = True,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_lock = 5,
	password_previous_password_block_count = 2,
	password_minimum_character_set_count = 0,
	password_required_type = RequiredPasswordType.Alphanumeric,
	os_minimum_version = "Os Minimum Version value",
	os_maximum_version = "Os Maximum Version value",
	system_integrity_protection_enabled = True,
	device_threat_protection_enabled = True,
	device_threat_protection_required_security_level = DeviceThreatProtectionLevel.Secured,
	storage_require_encryption = True,
	firewall_enabled = True,
	firewall_block_all_incoming = True,
	firewall_enable_stealth_mode = True,
)

result = await graph_client.device_management.device_compliance_policies.post(request_body)


```