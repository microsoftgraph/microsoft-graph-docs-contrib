---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RestorePostRequestBody()
request_body.cloud_pc_snapshot_id = 'A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8'




await client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').restore.post(request_body = request_body)


```