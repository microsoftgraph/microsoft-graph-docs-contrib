---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPcUserSettingItemRequestBuilder.CloudPcUserSettingItemRequestBuilderGetQueryParameters(
		expand = ["assignments"],
)

request_configuration = CloudPcUserSettingItemRequestBuilder.CloudPcUserSettingItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.user_settings.by_cloud_pc_user_setting_id('cloudPcUserSetting-id').get(request_configuration = request_configuration)


```