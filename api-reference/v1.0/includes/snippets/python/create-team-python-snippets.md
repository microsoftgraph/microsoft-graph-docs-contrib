---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
member_settings = TeamMemberSettings()
member_settings.allow_create_private_channels = True

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



result = await client.groups.by_group_id('group-id').team.put(request_body = request_body)


```