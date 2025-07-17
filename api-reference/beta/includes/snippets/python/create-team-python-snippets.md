---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.team import Team
from msgraph_beta.generated.models.team_member_settings import TeamMemberSettings
from msgraph_beta.generated.models.team_messaging_settings import TeamMessagingSettings
from msgraph_beta.generated.models.team_fun_settings import TeamFunSettings
from msgraph_beta.generated.models.giphy_rating_type import GiphyRatingType
from msgraph_beta.generated.models.team_discovery_settings import TeamDiscoverySettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
	discovery_settings = TeamDiscoverySettings(
		show_in_teams_search_and_suggestions = True,
	),
)

result = await graph_client.groups.by_group_id('group-id').team.put(request_body)


```