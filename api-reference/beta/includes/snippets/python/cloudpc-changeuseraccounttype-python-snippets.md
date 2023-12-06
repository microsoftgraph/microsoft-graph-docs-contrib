---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChangeUserAccountTypePostRequestBody(
	user_account_type = CloudPcUserAccountType.Administrator,
)

await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').change_user_account_type.post(request_body)


```