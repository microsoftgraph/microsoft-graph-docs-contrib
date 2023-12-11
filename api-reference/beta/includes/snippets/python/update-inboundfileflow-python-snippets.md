---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = InboundFlow(
	odata_type = "#microsoft.graph.industryData.inboundFlow",
	display_name = "My Inbound Flow",
	effective_date_time = "2022-03-12T16:40:46.924769+05:30",
	expiration_date_time = "2023-03-12T16:40:46.924769+05:30",
)

result = await graph_client.external.industry_data.inbound_flows.by_inbound_flow_id('inboundFlow-id').patch(request_body)


```