---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team

graph_client = GraphServiceClient(credentials, scopes)

request_body = Team(
	display_name = "My Class Team",
	description = "My Class Team’s Description",
	additional_data = {
			"template@odata_bind" : "https://graph.microsoft.com/v1.0/teamsTemplates('educationClass')",
	}
)

result = await graph_client.teams.post(request_body)


```