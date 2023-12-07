---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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