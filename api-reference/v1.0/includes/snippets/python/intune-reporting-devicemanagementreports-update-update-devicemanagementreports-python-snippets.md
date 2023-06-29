---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceManagementReports()
request_body.@odata_type = '#microsoft.graph.deviceManagementReports'




result = await client.device_management.reports.patch(request_body = request_body)


```