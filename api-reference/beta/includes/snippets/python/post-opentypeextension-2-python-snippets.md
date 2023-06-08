---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Extension()
request_body.@odata_type = 'microsoft.graph.openTypeExtension'

additional_data = [
'extension_name' => 'Com.Contoso.Referral', 
'company_name' => 'Wingtip Toys', 
'deal_value' => 500050,
'expiration_date' => '2015-12-03T10:00:00.000Z', 
];
request_body.additional_data(additional_data)





result = await client.me.messages.by_message_id('message-id').extensions.post(request_body = request_body)


```