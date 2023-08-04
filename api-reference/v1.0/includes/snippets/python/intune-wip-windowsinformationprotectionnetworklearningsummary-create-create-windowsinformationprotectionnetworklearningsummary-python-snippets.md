---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsInformationProtectionNetworkLearningSummary()
request_body.@odata_type = '#microsoft.graph.windowsInformationProtectionNetworkLearningSummary'

request_body.url = 'Url value'

request_body.DeviceCount = 11




result = await client.device_management.window_information_protection_network_learning_summaries.post(request_body = request_body)


```