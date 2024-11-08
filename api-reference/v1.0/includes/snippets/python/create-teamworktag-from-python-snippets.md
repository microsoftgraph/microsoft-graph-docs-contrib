---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.teamwork_tag import TeamworkTag
from msgraph.generated.models.teamwork_tag_member import TeamworkTagMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamworkTag(
	display_name = "Finance",
	members = [
		TeamworkTagMember(
			user_id = "92f6952f-61ca-4a94-8910-508a240bc167",
		),
		TeamworkTagMember(
			user_id = "085d800c-b86b-4bfc-a857-9371ad1caf29",
		),
	],
)

result = await graph_client.teams.by_team_id('team-id').tags.post(request_body)


```