---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.clone.clone_post_request_body import ClonePostRequestBody
from msgraph_beta.generated.models.clonable_team_parts import ClonableTeamParts
from msgraph_beta.generated.models.team_visibility_type import TeamVisibilityType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ClonePostRequestBody(
	display_name = "Library Assist",
	description = "Self help community for library",
	mail_nickname = "libassist",
	parts_to_clone = ClonableTeamParts.Apps | ClonableTeamParts.Tabs | ClonableTeamParts.Settings | ClonableTeamParts.Channels | ClonableTeamParts.Members,
	visibility = TeamVisibilityType.Public,
)

await graph_client.teams.by_team_id('team-id').clone.post(request_body)


```