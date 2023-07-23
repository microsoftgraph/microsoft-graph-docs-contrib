---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Windows10CompliancePolicy()
request_body.@odata_type = '#microsoft.graph.windows10CompliancePolicy'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.password_required = True

request_body.password_block_simple = True

request_body.password_required_to_unlock_from_idle = True

request_body.PasswordMinutesOfInactivityBeforeLock = 5

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumLength = 5

request_body.PasswordMinimumCharacterSetCount = 0

request_body.passwordrequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.require_healthy_device_report = True

request_body.os_minimum_version = 'Os Minimum Version value'

request_body.os_maximum_version = 'Os Maximum Version value'

request_body.mobile_os_minimum_version = 'Mobile Os Minimum Version value'

request_body.mobile_os_maximum_version = 'Mobile Os Maximum Version value'

request_body.early_launch_anti_malware_driver_enabled = True

request_body.bit_locker_enabled = True

request_body.secure_boot_enabled = True

request_body.code_integrity_enabled = True

request_body.storage_require_encryption = True




result = await client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').patch(request_body = request_body)


```