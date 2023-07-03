---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Windows10MobileCompliancePolicy()
request_body.@odata_type = '#microsoft.graph.windows10MobileCompliancePolicy'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.password_required = True

request_body.password_block_simple = True

request_body.PasswordMinimumLength = 5

request_body.PasswordMinimumCharacterSetCount = 0

request_body.passwordrequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.PasswordExpirationDays = 6

request_body.PasswordMinutesOfInactivityBeforeLock = 5

request_body.password_require_to_unlock_from_idle = True

request_body.os_minimum_version = 'Os Minimum Version value'

request_body.os_maximum_version = 'Os Maximum Version value'

request_body.early_launch_anti_malware_driver_enabled = True

request_body.bit_locker_enabled = True

request_body.secure_boot_enabled = True

request_body.code_integrity_enabled = True

request_body.storage_require_encryption = True




result = await client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').patch(request_body = request_body)


```