---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.outbound_provisioning_flow_set import OutboundProvisioningFlowSet
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OutboundProvisioningFlowSet(
	odata_type = "#microsoft.graph.industryData.outboundProvisioningFlowSet",
	display_name = "Outbound provisioning flow Updated",
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').patch(request_body)


```