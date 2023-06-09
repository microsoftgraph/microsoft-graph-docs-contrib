---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomAppScope()
custom_attributes = CustomAppScopeAttributesDictionary()
additional_data = [
'recipient_filter' => 'City -eq \'Seattle\'', 
];
custom_attributes.additional_data(additional_data)



request_body.custom_attributes = custom_attributes



result = await client.role_management.exchange.custom_app_scopes.by_custom_app_scope_id('customAppScope-id').patch(request_body = request_body)


```