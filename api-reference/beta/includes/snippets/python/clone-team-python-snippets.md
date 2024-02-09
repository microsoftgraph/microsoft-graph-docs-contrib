---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.clone_post_request_body import ClonePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ClonePostRequestBody(
	display_name = "Library Assist",
	description = "Self help community for library",
	mail_nickname = "libassist",
	parts_to_clone = ClonableTeamParts.Apps | ClonableTeamParts.Tabs | ClonableTeamParts.Settings | ClonableTeamParts.Channels | ClonableTeamParts.Members,
	visibility = TeamVisibilityType.Public,
)

await graph_client.teams.by_team_id('team-id').clone.post(request_body)


```