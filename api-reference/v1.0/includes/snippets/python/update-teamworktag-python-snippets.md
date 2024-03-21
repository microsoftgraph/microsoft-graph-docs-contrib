---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.teamwork_tag import TeamworkTag

graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamworkTag(
	display_name = "Finance",
)

result = await graph_client.teams.by_team_id('team-id').tags.by_teamwork_tag_id('teamworkTag-id').patch(request_body)


```