---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.security_group_provisioning_flow import SecurityGroupProvisioningFlow
from msgraph_beta.generated.models.industry_data.security_group_creation_options import SecurityGroupCreationOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SecurityGroupProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.securityGroupProvisioningFlow",
	creation_options = SecurityGroupCreationOptions(
		create_based_on_role_group = True,
		create_based_on_org_plus_role_group = True,
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.by_provisioning_flow_id('provisioningFlow-id').patch(request_body)


```