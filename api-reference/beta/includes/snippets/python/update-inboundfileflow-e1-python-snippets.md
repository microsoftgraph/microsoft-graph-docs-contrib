---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = InboundFileFlow(
	odata_type = "#microsoft.graph.industryData.inboundFileFlow",
	display_name = "Updated flow name",
)

result = await graph_client.external.industry_data.inbound_flows.by_inbound_flow_id('inboundFlow-id').patch(body = request_body)


```