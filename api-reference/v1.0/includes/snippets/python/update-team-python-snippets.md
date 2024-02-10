---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team
from msgraph.generated.models.team_member_settings import TeamMemberSettings
from msgraph.generated.models.team_messaging_settings import TeamMessagingSettings
from msgraph.generated.models.team_fun_settings import TeamFunSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = Team(
	member_settings = TeamMemberSettings(
		allow_create_update_channels = True,
	),
	messaging_settings = TeamMessagingSettings(
		allow_user_edit_messages = True,
		allow_user_delete_messages = True,
	),
	fun_settings = TeamFunSettings(
		allow_giphy = True,
		giphy_content_rating = GiphyRatingType.Strict,
	),
)

result = await graph_client.teams.by_team_id('team-id').patch(request_body)


```