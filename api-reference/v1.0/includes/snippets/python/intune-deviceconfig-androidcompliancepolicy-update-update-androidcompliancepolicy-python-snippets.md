---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.android_compliance_policy import AndroidCompliancePolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = AndroidCompliancePolicy(
	odata_type = "#microsoft.graph.androidCompliancePolicy",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	password_required = True,
	password_minimum_length = 5,
	password_required_type = AndroidRequiredPasswordType.Alphabetic,
	password_minutes_of_inactivity_before_lock = 5,
	password_expiration_days = 6,
	password_previous_password_block_count = 2,
	security_prevent_install_apps_from_unknown_sources = True,
	security_disable_usb_debugging = True,
	security_require_verify_apps = True,
	device_threat_protection_enabled = True,
	device_threat_protection_required_security_level = DeviceThreatProtectionLevel.Secured,
	security_block_jailbroken_devices = True,
	os_minimum_version = "Os Minimum Version value",
	os_maximum_version = "Os Maximum Version value",
	min_android_security_patch_level = "Min Android Security Patch Level value",
	storage_require_encryption = True,
	security_require_safety_net_attestation_basic_integrity = True,
	security_require_safety_net_attestation_certified_device = True,
	security_require_google_play_services = True,
	security_require_up_to_date_security_providers = True,
	security_require_company_portal_app_integrity = True,
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').patch(request_body)


```