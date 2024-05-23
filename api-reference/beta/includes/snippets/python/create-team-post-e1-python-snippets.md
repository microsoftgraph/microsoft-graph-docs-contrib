---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.team import Team

graph_client = GraphServiceClient(credentials, scopes)

request_body = Team(
	display_name = "My Sample Team",
	description = "My Sample Team's Description",
	additional_data = {
			"template@odata_bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')",
	}
)

result = await graph_client.teams.post(request_body)


```