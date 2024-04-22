---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.outbound_provisioning_flow_set import OutboundProvisioningFlowSet
from msgraph.generated.models.basic_filter import BasicFilter

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutboundProvisioningFlowSet(
	odata_type = "#microsoft.graph.industryData.outboundProvisioningFlowSet",
	display_name = "Outbound Provisioning Flow Test",
	filter = BasicFilter(
		odata_type = "#microsoft.graph.industryData.basicFilter",
		attribute = FilterOptions.OrgExternalId,
		in = [
			"Quarter",
			"Demo",
		],
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.post(request_body)


```