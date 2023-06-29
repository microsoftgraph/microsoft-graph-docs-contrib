---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IosCompliancePolicy()
request_body.@odata_type = '#microsoft.graph.iosCompliancePolicy'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.passcode_block_simple = True

request_body.PasscodeExpirationDays = 6

request_body.PasscodeMinimumLength = 5

request_body.PasscodeMinutesOfInactivityBeforeLock = 5

request_body.PasscodePreviousPasscodeBlockCount = 2

request_body.PasscodeMinimumCharacterSetCount = 0

request_body.passcoderequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.passcode_required = True

request_body.os_minimum_version = 'Os Minimum Version value'

request_body.os_maximum_version = 'Os Maximum Version value'

request_body.security_block_jailbroken_devices = True

request_body.device_threat_protection_enabled = True

request_body.devicethreatprotectionrequiredsecuritylevel(DeviceThreatProtectionLevel.Secured('devicethreatprotectionlevel.secured'))

request_body.managed_email_profile_required = True




result = await client.device_management.device_compliance_policies.post(request_body = request_body)


```