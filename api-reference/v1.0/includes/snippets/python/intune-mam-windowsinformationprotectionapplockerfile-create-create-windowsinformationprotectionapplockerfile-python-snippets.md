---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsInformationProtectionAppLockerFile()
request_body.@odata_type = '#microsoft.graph.windowsInformationProtectionAppLockerFile'

request_body.display_name = 'Display Name value'

request_body.file_hash = 'File Hash value'

request_body.File(base64_decode('ZmlsZQ=='))

request_body.version = 'Version value'




result = await client.device_app_management.window_information_protection_policies.by_window_information_protection_policie_id('windowsInformationProtectionPolicy-id').exempt_app_locker_files.post(request_body = request_body)


```