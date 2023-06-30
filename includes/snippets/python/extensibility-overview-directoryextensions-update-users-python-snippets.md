---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
additional_data = [
'extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable' => 		null,
'extension_b7d8e648520f41d3b9c0fdeb91768a0a_job_group_tracker' => 'E4', 
];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').patch(request_body = request_body)


```