---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TeamworkTagMember(
	user_id = "97f62344-57dc-409c-88ad-c4af14158ff5",
)

result = await graph_client.teams.by_team_id('team-id').tags.by_tag_id('teamworkTag-id').members.post(body = request_body)


```