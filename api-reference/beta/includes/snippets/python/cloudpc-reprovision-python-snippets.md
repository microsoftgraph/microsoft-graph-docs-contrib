---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.cloudpcs.item.reprovision.reprovision_post_request_body import ReprovisionPostRequestBody
from msgraph_beta.generated.models.cloud_pc_user_account_type import CloudPcUserAccountType
from msgraph_beta.generated.models.cloud_pc_operating_system import CloudPcOperatingSystem
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReprovisionPostRequestBody(
	user_account_type = CloudPcUserAccountType.Administrator,
	os_version = CloudPcOperatingSystem.Windows10,
)

await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').reprovision.post(request_body)


```