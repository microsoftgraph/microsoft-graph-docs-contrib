---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
additional_data = [
'members@odata_bind' => ['https://graph.microsoft.com/v1.0/directoryObjects/{id}', 'https://graph.microsoft.com/v1.0/directoryObjects/{id}', 'https://graph.microsoft.com/v1.0/directoryObjects/{id}', ],
];
request_body.additional_data(additional_data)





result = await client.groups.by_group_id('group-id').patch(request_body = request_body)


```