---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.teamwork.deleted_teams.by_deleted_team_id('deletedTeam-id').channels.get_all_messages.get()


```