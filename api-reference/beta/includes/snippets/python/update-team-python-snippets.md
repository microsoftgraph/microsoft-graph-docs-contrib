---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
request_body.is_membership_limited_to_owners = True

member_settings = TeamMemberSettings()
member_settings.allow_create_update_channels = True


request_body.member_settings = member_settings
messaging_settings = TeamMessagingSettings()
messaging_settings.allow_user_edit_messages = True

messaging_settings.allow_user_delete_messages = True


request_body.messaging_settings = messaging_settings
fun_settings = TeamFunSettings()
fun_settings.allow_giphy = True

fun_settings.giphycontentrating(GiphyRatingType.Strict('giphyratingtype.strict'))


request_body.fun_settings = fun_settings
discovery_settings = TeamDiscoverySettings()
discovery_settings.show_in_teams_search_and_suggestions = True


request_body.discovery_settings = discovery_settings



result = await client.teams.by_team_id('team-id').patch(request_body = request_body)


```