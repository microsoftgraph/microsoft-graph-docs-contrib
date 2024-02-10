---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.channel import Channel

graph_client = GraphServiceClient(credentials, scopes)

request_body = Channel(
	display_name = "Architecture Discussion",
	description = "This channel is where we debate all future architecture plans",
	membership_type = ChannelMembershipType.Standard,
)

result = await graph_client.teams.by_team_id('team-id').channels.post(request_body)


```