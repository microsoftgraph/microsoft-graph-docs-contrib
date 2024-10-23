---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.cloud_p_cs.get_provisioned_cloud_p_cs(group_id='{group_id}',service_plan_id='{service_plan_id}').get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id_request_builder import GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilder.GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilderGetQueryParameters(
		select = ["id","displayName","powerState","connectivityResult","lastLoginResult","lastRemoteActionResult","osVersion","provisioningPolicyName","userAccountType"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id("{groupId}","{servicePlanId}").get(request_configuration = request_configuration)


```