---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.inbound_file_flow import InboundFileFlow
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InboundFileFlow(
	odata_type = "#microsoft.graph.industryData.inboundFileFlow",
	display_name = "Updated flow name",
)

result = await graph_client.external.industry_data.inbound_flows.by_inbound_flow_id('inboundFlow-id').patch(request_body)


```