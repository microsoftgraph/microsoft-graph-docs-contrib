---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.externalpartners.item.deploy_agent.deploy_agent_post_request_body import DeployAgentPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeployAgentPostRequestBody(
	cloud_pc_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	],
)

result = await graph_client.device_management.virtual_endpoint.external_partners.by_cloud_pc_external_partner_id('cloudPcExternalPartner-id').deploy_agent.post(request_body)


```