---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.messagetype(ChatMessageType.Message('chatmessagetype.message'))

request_body.deletedDateTime=null

request_body.subject=null

request_body.summary=null

request_body.importance(ChatMessageImportance.Normal('chatmessageimportance.normal'))

request_body.locale = 'en-us'

from = ChatMessageFromIdentitySet()
from.application=null

from.device=null

fromuser = Identity()
fromuser.id = '6b3f3c54-d09c-4fdd-b146-9b514a8a4f40'

fromuser.display_name = 'Sumit Gupta'

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
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH'


request_body.body = body
request_body.Attachments([])

mentions_chat_message_mention1 = ChatMessageMention()
mentions_chat_message_mention1.Id = 0

mentions_chat_message_mention1.mention_text = 'Raghav'

mentions_chat_message_mention1mentioned = ChatMessageMentionedIdentitySet()
mentions_chat_message_mention1mentioned.application=null

mentions_chat_message_mention1mentioned.device=null

mentions_chat_message_mention1mentioned.conversation=null

mentions_chat_message_mention1mentioneduser = Identity()
mentions_chat_message_mention1mentioneduser.id = 'f1b66449-b46d-49b0-9c3c-53c10234c818e'

mentions_chat_message_mention1mentioneduser.display_name = 'Raghav Mankad'

additional_data = [
'user_identity_type' => 'aadUser', 
];
mentions_chat_message_mention1mentioneduser.additional_data(additional_data)



mentions_chat_message_mention1mentioned.user = mentions_chat_message_mention1mentioneduser

mentions_chat_message_mention1.mentioned = mentions_chat_message_mention1mentioned

mentionsArray []= mentionsChatMessageMention1;
mentions_chat_message_mention2 = ChatMessageMention()
mentions_chat_message_mention2.Id = 1

mentions_chat_message_mention2.mention_text = 'TestGlobalBot'

mentions_chat_message_mention2mentioned = ChatMessageMentionedIdentitySet()
mentions_chat_message_mention2mentionedapplication = Identity()
mentions_chat_message_mention2mentionedapplication.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

mentions_chat_message_mention2mentionedapplication.display_name = 'TestGlobalBot'

additional_data = [
'application_identity_type' => 'bot', 
];
mentions_chat_message_mention2mentionedapplication.additional_data(additional_data)



mentions_chat_message_mention2mentioned.application = mentions_chat_message_mention2mentionedapplication
mentions_chat_message_mention2mentioned.device=null

mentions_chat_message_mention2mentioned.conversation=null

mentions_chat_message_mention2mentioned.user=null


mentions_chat_message_mention2.mentioned = mentions_chat_message_mention2mentioned

mentionsArray []= mentionsChatMessageMention2;
request_body.mentions(mentionsArray)


request_body.Reactions([])

request_body.MessageHistory([])




result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_message_id('chatMessage-id').patch(request_body = request_body)


```