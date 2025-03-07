---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team
from msgraph.generated.models.team_member_settings import TeamMemberSettings
from msgraph.generated.models.team_messaging_settings import TeamMessagingSettings
from msgraph.generated.models.team_fun_settings import TeamFunSettings
from msgraph.generated.models.giphy_rating_type import GiphyRatingType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Team(
	member_settings = TeamMemberSettings(
		allow_create_private_channels = True,
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

result = await graph_client.groups.by_group_id('group-id').team.put(request_body)


```