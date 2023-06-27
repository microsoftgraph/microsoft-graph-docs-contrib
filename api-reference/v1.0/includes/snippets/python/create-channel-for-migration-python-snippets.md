---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Channel()
request_body.display_name = 'Import_150958_99z'

request_body.description = 'Import_150958_99z'

request_body.createdDateTime = DateTime('2020-03-14T11:22:17.067Z')

additional_data = [
'@microsoft_graph_channel_creation_mode' => 'migration', 
];
request_body.additional_data(additional_data)





result = await client.teams.by_team_id('team-id').channels.post(request_body = request_body)


```