---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InboundFileFlow()
request_body.@odata_type = '#microsoft.graph.industryData.inboundFileFlow'

request_body.datadomain(InboundDomain.EducationRostering('inbounddomain.educationrostering'))

request_body.display_name = 'Inbound rostering flow'

request_body.effectiveDateTime = DateTime('2023-03-12T16:40:46.924769+05:30')

request_body.expirationDateTime = DateTime('2023-03-13T16:40:46.924769+05:30')

additional_data = [
'data_connector@odata_bind' => 'https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271', 
'year@odata_bind' => 'https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb', 
];
request_body.additional_data(additional_data)





result = await client.external.industry_data.inbound_flows.post(request_body = request_body)


```