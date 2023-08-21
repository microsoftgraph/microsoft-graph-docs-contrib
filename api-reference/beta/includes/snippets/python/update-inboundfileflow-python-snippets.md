---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InboundFlow()
request_body.@odata_type = '#microsoft.graph.industryData.inboundFlow'

request_body.display_name = 'My Inbound Flow'

request_body.effectiveDateTime = DateTime('2022-03-12T16:40:46.924769+05:30')

request_body.expirationDateTime = DateTime('2023-03-12T16:40:46.924769+05:30')




result = await client.external.industry_data.inbound_flows.by_inbound_flow_id('inboundFlow-id').patch(request_body = request_body)


```