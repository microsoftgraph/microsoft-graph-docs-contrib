---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InboundFileFlow()
request_body.@odata_type = '#microsoft.graph.industryData.inboundFileFlow'

request_body.display_name = 'Updated flow name'




result = await client.external.industry_data.inbound_flows.by_inbound_flow_id('inboundFlow-id').patch(request_body = request_body)


```