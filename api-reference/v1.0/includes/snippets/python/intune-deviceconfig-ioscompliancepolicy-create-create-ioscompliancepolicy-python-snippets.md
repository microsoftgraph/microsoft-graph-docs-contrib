---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.ios_compliance_policy import IosCompliancePolicy
from msgraph.generated.models.required_password_type import RequiredPasswordType
from msgraph.generated.models.device_threat_protection_level import DeviceThreatProtectionLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IosCompliancePolicy(
	odata_type = "#microsoft.graph.iosCompliancePolicy",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	passcode_block_simple = True,
	passcode_expiration_days = 6,
	passcode_minimum_length = 5,
	passcode_minutes_of_inactivity_before_lock = 5,
	passcode_previous_passcode_block_count = 2,
	passcode_minimum_character_set_count = 0,
	passcode_required_type = RequiredPasswordType.Alphanumeric,
	passcode_required = True,
	os_minimum_version = "Os Minimum Version value",
	os_maximum_version = "Os Maximum Version value",
	security_block_jailbroken_devices = True,
	device_threat_protection_enabled = True,
	device_threat_protection_required_security_level = DeviceThreatProtectionLevel.Secured,
	managed_email_profile_required = True,
)

result = await graph_client.device_management.device_compliance_policies.post(request_body)


```