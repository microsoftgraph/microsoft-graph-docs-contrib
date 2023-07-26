---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = 'Hello World <at id=\"0\">Jane Smith</at>'


request_body.body = body
mentions_chat_message_mention1 = ChatMessageMention()
mentions_chat_message_mention1.Id = 0

mentions_chat_message_mention1.mention_text = 'Jane Smith'

mentions_chat_message_mention1mentioned = ChatMessageMentionedIdentitySet()
mentions_chat_message_mention1mentioneduser = Identity()
mentions_chat_message_mention1mentioneduser.display_name = 'Jane Smith'

mentions_chat_message_mention1mentioneduser.id = 'ef1c916a-3135-4417-ba27-8eb7bd084193'

additional_data = [
'user_identity_type' => 'aadUser', 
];
mentions_chat_message_mention1mentioneduser.additional_data(additional_data)



mentions_chat_message_mention1mentioned.user = mentions_chat_message_mention1mentioneduser

mentions_chat_message_mention1.mentioned = mentions_chat_message_mention1mentioned

mentionsArray []= mentionsChatMessageMention1;
request_body.mentions(mentionsArray)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body = request_body)


```