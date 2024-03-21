---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.teams.by_team_id('team-id').tags.by_teamwork_tag_id('teamworkTag-id').members.by_teamwork_tag_member_id('teamworkTagMember-id').get()


```