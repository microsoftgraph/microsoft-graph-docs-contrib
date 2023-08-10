---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenTypeExtension()
request_body.@odata_type = 'microsoft.graph.openTypeExtension'

request_body.extension_name = 'Com.Contoso.Deal'

additional_data = [
'company_name' => 'Alpine Skis', 
'deal_value' => 1010100,
'expiration_date' => '2015-07-03T13:04:00.000Z', 
];
request_body.additional_data(additional_data)





result = await client.groups.by_group_id('group-id').events.by_event_id('event-id').extensions.post(request_body = request_body)


```