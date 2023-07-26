---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AndroidCompliancePolicy()
request_body.@odata_type = '#microsoft.graph.androidCompliancePolicy'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.password_required = True

request_body.PasswordMinimumLength = 5

request_body.passwordrequiredtype(AndroidRequiredPasswordType.Alphabetic('androidrequiredpasswordtype.alphabetic'))

request_body.PasswordMinutesOfInactivityBeforeLock = 5

request_body.PasswordExpirationDays = 6

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.security_prevent_install_apps_from_unknown_sources = True

request_body.security_disable_usb_debugging = True

request_body.security_require_verify_apps = True

request_body.device_threat_protection_enabled = True

request_body.devicethreatprotectionrequiredsecuritylevel(DeviceThreatProtectionLevel.Secured('devicethreatprotectionlevel.secured'))

request_body.security_block_jailbroken_devices = True

request_body.os_minimum_version = 'Os Minimum Version value'

request_body.os_maximum_version = 'Os Maximum Version value'

request_body.min_android_security_patch_level = 'Min Android Security Patch Level value'

request_body.storage_require_encryption = True

request_body.security_require_safety_net_attestation_basic_integrity = True

request_body.security_require_safety_net_attestation_certified_device = True

request_body.security_require_google_play_services = True

request_body.security_require_up_to_date_security_providers = True

request_body.security_require_company_portal_app_integrity = True




result = await client.device_management.device_compliance_policies.post(request_body = request_body)


```