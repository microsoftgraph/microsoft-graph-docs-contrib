---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceEnrollmentWindowsHelloForBusinessConfiguration()
request_body.@odata_type = '#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.Priority = 8

request_body.Version = 7

request_body.PinMinimumLength = 0

request_body.PinMaximumLength = 0

request_body.pinuppercasecharactersusage(WindowsHelloForBusinessPinUsage.Required('windowshelloforbusinesspinusage.required'))

request_body.pinlowercasecharactersusage(WindowsHelloForBusinessPinUsage.Required('windowshelloforbusinesspinusage.required'))

request_body.pinspecialcharactersusage(WindowsHelloForBusinessPinUsage.Required('windowshelloforbusinesspinusage.required'))

request_body.state(Enablement.Enabled('enablement.enabled'))

request_body.security_device_required = True

request_body.unlock_with_biometrics_enabled = True

request_body.remote_passport_enabled = True

request_body.PinPreviousBlockCount = 5

request_body.PinExpirationInDays = 3

request_body.enhancedbiometricsstate(Enablement.Enabled('enablement.enabled'))




result = await client.device_management.device_enrollment_configurations.post(request_body = request_body)


```