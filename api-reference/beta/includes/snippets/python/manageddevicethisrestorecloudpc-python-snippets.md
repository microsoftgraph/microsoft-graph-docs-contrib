---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RestoreCloudPcPostRequestBody()
request_body.cloud_pc_snapshot_id = 'A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8'




await client.device_management.managed_devices.by_managed_device_id('managedDevice-id').restore_cloud_pc.post(request_body = request_body)


```