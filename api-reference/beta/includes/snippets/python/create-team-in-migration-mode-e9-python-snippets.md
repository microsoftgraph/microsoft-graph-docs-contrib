---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
request_body.display_name = 'My Sample Team'

request_body.description = 'My Sample Team’s Description'

request_body.createdDateTime = DateTime('2020-03-14T11:22:17.067Z')

additional_data = [
'@microsoft_graph_team_creation_mode' => 'migration', 
'template@odata_bind' => 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')', 
];
request_body.additional_data(additional_data)





result = await client.teams.post(request_body = request_body)


```