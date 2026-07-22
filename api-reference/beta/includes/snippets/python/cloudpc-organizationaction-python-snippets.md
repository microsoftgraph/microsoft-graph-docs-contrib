---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.organization_action.organization_action_post_request_body import OrganizationActionPostRequestBody
from msgraph_beta.generated.models.cloud_pc_organization_action_type import CloudPcOrganizationActionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OrganizationActionPostRequestBody(
	action_type = CloudPcOrganizationActionType.Activate,
)

result = await graph_client.device_management.virtual_endpoint.organization_action.post(request_body)


```