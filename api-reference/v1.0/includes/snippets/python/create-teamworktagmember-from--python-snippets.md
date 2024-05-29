---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.teamwork_tag_member import TeamworkTagMember

graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamworkTagMember(
	user_id = "97f62344-57dc-409c-88ad-c4af14158ff5",
)

result = await graph_client.teams.by_team_id('team-id').tags.by_teamwork_tag_id('teamworkTag-id').members.post(request_body)


```