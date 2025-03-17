---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.channel import Channel
from msgraph.generated.models.channel_membership_type import ChannelMembershipType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Channel(
	display_name = "Architecture Discussion",
	description = "This channel is where we debate all future architecture plans",
	membership_type = ChannelMembershipType.Standard,
)

result = await graph_client.teams.by_team_id('team-id').channels.post(request_body)


```