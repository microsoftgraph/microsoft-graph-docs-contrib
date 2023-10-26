---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Channel(
	display_name = "Import_150958_99z",
	description = "Import_150958_99z",
	created_date_time = "2020-03-14T11:22:17.067Z",
	additional_data = {
			"@microsoft_graph_channel_creation_mode" : "migration",
	}
)

result = await graph_client.teams.by_team_id('team-id').channels.post(request_body)


```