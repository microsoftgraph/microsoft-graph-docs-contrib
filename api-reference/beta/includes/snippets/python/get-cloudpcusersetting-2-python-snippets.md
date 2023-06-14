---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CloudPcUserSettingRequestBuilder.CloudPcUserSettingRequestBuilderGetQueryParameters(
		expand = ["assignments"],
)

request_configuration = CloudPcUserSettingRequestBuilder.CloudPcUserSettingRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.device_management.virtual_endpoint.user_settings.by_user_setting_id('cloudPcUserSetting-id').get(request_configuration = request_configuration)


```