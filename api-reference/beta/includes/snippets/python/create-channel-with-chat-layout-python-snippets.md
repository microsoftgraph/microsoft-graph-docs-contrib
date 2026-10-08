---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.channel import Channel
from msgraph_beta.generated.models.channel_membership_type import ChannelMembershipType
from msgraph_beta.generated.models.channel_layout_type import ChannelLayoutType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Channel(
	display_name = "Project Collaboration",
	description = "Discussion space for project team collaboration",
	membership_type = ChannelMembershipType.Standard,
	layout_type = ChannelLayoutType.Chat,
)

result = await graph_client.teams.by_team_id('team-id').channels.post(request_body)


```