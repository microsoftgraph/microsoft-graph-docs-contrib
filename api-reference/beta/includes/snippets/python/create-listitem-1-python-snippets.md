---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ListItem()
fields = FieldValueSet()
additional_data = [
'title' => 'Widget', 
'color' => 'Purple', 
'weight' => 32,
];
fields.additional_data(additional_data)



request_body.fields = fields



result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.post(request_body = request_body)


```