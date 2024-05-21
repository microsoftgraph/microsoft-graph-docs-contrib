---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.outbound_provisioning_flow_set import OutboundProvisioningFlowSet

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutboundProvisioningFlowSet(
	odata_type = "#microsoft.graph.industryData.outboundProvisioningFlowSet",
	display_name = "Outbound provisioning flow Updated",
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').patch(request_body)


```