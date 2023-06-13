---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.messagetype(ChatMessageType.Message('chatmessagetype.message'))

request_body.subject=null

request_body.summary=null

request_body.importance(ChatMessageImportance.Normal('chatmessageimportance.normal'))

request_body.locale = 'en-us'

from = ChatMessageFromIdentitySet()
from.application=null

from.device=null

fromuser = Identity()
fromuser.id = '3b102402-813e-4e17-a6b2-f841aef1fdfc'

fromuser.display_name = 'Lam Cong'

additional_data = [
'user_identity_type' => 'aadUser', 
];
fromuser.additional_data(additional_data)



from.user = fromuser
additional_data = [
'conversation' => 		null,
];
from.additional_data(additional_data)



request_body.from = from
body = ItemBody()
body.contenttype(BodyType.Text('bodytype.text'))

body.content = 'Edit text only'


request_body.body = body
request_body.Attachments([])

request_body.Mentions([])

request_body.Reactions([])

request_body.MessageHistory([])




result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_message_id('chatMessage-id').patch(request_body = request_body)


```