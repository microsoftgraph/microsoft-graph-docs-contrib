---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.outbound_provisioning_flow_set import OutboundProvisioningFlowSet
from msgraph_beta.generated.models.industry_data.basic_filter import BasicFilter
from msgraph_beta.generated.models.filter_options import FilterOptions

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