---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.teams.by_team_id('team-id').members.by_conversation_member_id('conversationMember-id').delete()


```