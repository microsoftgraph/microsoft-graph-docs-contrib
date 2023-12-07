---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Team(
	is_membership_limited_to_owners = True,
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

result = await graph_client.teams.by_team_id('team-id').patch(request_body)


```