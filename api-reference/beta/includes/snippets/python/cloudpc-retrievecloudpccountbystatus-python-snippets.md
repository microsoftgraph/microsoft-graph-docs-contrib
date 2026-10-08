---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.cloud_p_cs.retrieve_cloud_pc_count_by_status.retrieve_cloud_pc_count_by_status_request_builder import RetrieveCloudPcCountByStatusRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RetrieveCloudPcCountByStatusRequestBuilder.RetrieveCloudPcCountByStatusRequestBuilderGetQueryParameters(
		custom_filter = "contains(tolower(managedDeviceName), 'a') or contains(tolower(imageDisplayName), 'a') or contains(tolower(userPrincipalName), 'a')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.retrieve_cloud_pc_count_by_status.get(request_configuration = request_configuration)


```