---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.createdDateTime = DateTime('2019-02-04T19:58:15.511Z')

from = ChatMessageFromIdentitySet()
fromuser = Identity()
fromuser.id = '8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca'

fromuser.display_name = 'John Doe'


from.user = fromuser

request_body.from = from
body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = 'Hello World'


request_body.body = body



result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_message_id('chatMessage-id').replies.post(request_body = request_body)


```