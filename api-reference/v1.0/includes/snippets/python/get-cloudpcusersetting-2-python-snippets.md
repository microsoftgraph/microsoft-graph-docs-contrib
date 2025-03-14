---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.device_management.virtual_endpoint.user_settings.item.cloud_pc_user_setting_item_request_builder import CloudPcUserSettingItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CloudPcUserSettingItemRequestBuilder.CloudPcUserSettingItemRequestBuilderGetQueryParameters(
		expand = ["assignments"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.user_settings.by_cloud_pc_user_setting_id('cloudPcUserSetting-id').get(request_configuration = request_configuration)


```