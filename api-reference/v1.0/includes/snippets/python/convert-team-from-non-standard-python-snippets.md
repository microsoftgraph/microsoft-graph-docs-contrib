---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
request_body.display_name = 'My Class Team'

request_body.description = 'My Class Team’s Description'

additional_data = [
'template@odata_bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'educationClass\')', 
];
request_body.additional_data(additional_data)





result = await client.teams.post(request_body = request_body)


```