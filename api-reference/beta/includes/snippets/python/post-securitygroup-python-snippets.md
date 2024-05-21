---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.security_group_provisioning_flow import SecurityGroupProvisioningFlow
from msgraph.generated.models.security_group_creation_options import SecurityGroupCreationOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = SecurityGroupProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.securityGroupProvisioningFlow",
	creation_options = SecurityGroupCreationOptions(
		create_based_onrole_group = True,
		create_based_on_org_plusrole_group = False,
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.post(request_body)


```