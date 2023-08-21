---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomAppScope()
request_body.type = 'RecipientScope'

request_body.display_name = 'Protected Exec Users'

custom_attributes = CustomAppScopeAttributesDictionary()
additional_data = [
'exclusive' => false,
'recipient_filter' => 'Title -like \'VP*\'', 
];
custom_attributes.additional_data(additional_data)



request_body.custom_attributes = custom_attributes



result = await client.role_management.exchange.custom_app_scopes.post(request_body = request_body)


```