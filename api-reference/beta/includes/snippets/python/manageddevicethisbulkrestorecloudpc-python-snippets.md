---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BulkRestoreCloudPcPostRequestBody()
request_body.ManagedDeviceIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd', ])

request_body.restorePointDateTime = DateTime('2021-09-23T04:00:00.0000000')

request_body.timerange(RestoreTimeRange.Before('restoretimerange.before'))




result = await client.device_management.managed_devices.bulk_restore_cloud_pc.post(request_body = request_body)


```