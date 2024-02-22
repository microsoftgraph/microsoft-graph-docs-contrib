---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.deviceManagement.virtualEndpoint.userSettings.item.cloud_pc_user_setting_item_request_builder import CloudPcUserSettingItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPcUserSettingItemRequestBuilder.CloudPcUserSettingItemRequestBuilderGetQueryParameters(
		expand = ["assignments"],
)

request_configuration = CloudPcUserSettingItemRequestBuilder.CloudPcUserSettingItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.user_settings.by_cloud_pc_user_setting_id('cloudPcUserSetting-id').get(request_configuration = request_configuration)


```