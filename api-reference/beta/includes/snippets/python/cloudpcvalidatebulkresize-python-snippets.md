---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ValidateBulkResizePostRequestBody()
request_body.CloudPcIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd', ])

request_body.target_service_plan_id = '662009bc-7732-4f6f-8726-25883518b33e'




result = await client.device_management.virtual_endpoint.cloud_p_cs.validate_bulk_resize.post(request_body = request_body)


```