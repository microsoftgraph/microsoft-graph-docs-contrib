---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.externalpartners.item.configure_agent.configure_agent_post_request_body import ConfigureAgentPostRequestBody
from msgraph_beta.generated.models.cloud_pc_external_partner_agent_setting import CloudPcExternalPartnerAgentSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConfigureAgentPostRequestBody(
	agent_setting = CloudPcExternalPartnerAgentSetting(
		agent_url = "https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi",
		agent_sha256 = "EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8",
		install_parameters = [
			"/quiet",
			"/norestart",
			"TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1",
		],
		auto_deployment_enabled = True,
	),
)

await graph_client.device_management.virtual_endpoint.external_partners.by_cloud_pc_external_partner_id('cloudPcExternalPartner-id').configure_agent.post(request_body)


```