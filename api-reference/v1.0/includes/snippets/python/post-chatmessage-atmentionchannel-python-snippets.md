---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>'


request_body.body = body
mentions_chat_message_mention1 = ChatMessageMention()
mentions_chat_message_mention1.Id = 0

mentions_chat_message_mention1.mention_text = 'General'

mentions_chat_message_mention1mentioned = ChatMessageMentionedIdentitySet()
mentions_chat_message_mention1mentionedconversation = TeamworkConversationIdentity()
mentions_chat_message_mention1mentionedconversation.id = '19:0b50940236084d258c97b21bd01917b0@thread.skype'

mentions_chat_message_mention1mentionedconversation.display_name = 'General'

mentions_chat_message_mention1mentionedconversation.conversationidentitytype(TeamworkConversationIdentityType.Channel('teamworkconversationidentitytype.channel'))


mentions_chat_message_mention1mentioned.conversation = mentions_chat_message_mention1mentionedconversation

mentions_chat_message_mention1.mentioned = mentions_chat_message_mention1mentioned

mentionsArray []= mentionsChatMessageMention1;
request_body.mentions(mentionsArray)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body = request_body)


```