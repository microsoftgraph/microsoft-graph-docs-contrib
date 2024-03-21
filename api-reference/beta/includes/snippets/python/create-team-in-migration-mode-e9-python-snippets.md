---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team

graph_client = GraphServiceClient(credentials, scopes)

request_body = Team(
	display_name = "My Sample Team",
	description = "My Sample Team’s Description",
	created_date_time = "2020-03-14T11:22:17.067Z",
	additional_data = {
			"@microsoft_graph_team_creation_mode" : "migration",
			"template@odata_bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')",
	}
)

result = await graph_client.teams.post(request_body)


```