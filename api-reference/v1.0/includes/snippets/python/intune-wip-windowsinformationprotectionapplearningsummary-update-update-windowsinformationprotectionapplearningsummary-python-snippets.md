---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsInformationProtectionAppLearningSummary()
request_body.@odata_type = '#microsoft.graph.windowsInformationProtectionAppLearningSummary'

request_body.application_name = 'Application Name value'

request_body.applicationtype(ApplicationType.Desktop('applicationtype.desktop'))

request_body.DeviceCount = 11




result = await client.device_management.window_information_protection_app_learning_summaries.by_window_information_protection_app_learning_summarie_id('windowsInformationProtectionAppLearningSummary-id').patch(request_body = request_body)


```