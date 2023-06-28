---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsPhone81CompliancePolicy()
request_body.@odata_type = '#microsoft.graph.windowsPhone81CompliancePolicy'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.password_block_simple = True

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumLength = 5

request_body.PasswordMinutesOfInactivityBeforeLock = 5

request_body.PasswordMinimumCharacterSetCount = 0

request_body.passwordrequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.password_required = True

request_body.os_minimum_version = 'Os Minimum Version value'

request_body.os_maximum_version = 'Os Maximum Version value'

request_body.storage_require_encryption = True




result = await client.device_management.device_compliance_policies.post(request_body = request_body)


```