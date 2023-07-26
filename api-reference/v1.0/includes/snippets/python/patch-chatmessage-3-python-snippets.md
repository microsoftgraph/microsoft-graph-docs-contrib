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
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>'


request_body.body = body
attachments_chat_message_attachment1 = ChatMessageAttachment()
attachments_chat_message_attachment1.id = 'e8f78756199240b88448ae0fc6db112d'

attachments_chat_message_attachment1.content_type = 'application/vnd.microsoft.card.hero'

attachments_chat_message_attachment1.contentUrl=null

attachments_chat_message_attachment1.content = '{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you\'re cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \"\",\r\n      \"value\": \"&i am back& <>= \"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}'

attachments_chat_message_attachment1.name=null

attachments_chat_message_attachment1.thumbnailUrl=null


attachmentsArray []= attachmentsChatMessageAttachment1;
attachments_chat_message_attachment2 = ChatMessageAttachment()
attachments_chat_message_attachment2.id = '638464e32834471ea202007da60a5ae6'

attachments_chat_message_attachment2.content_type = 'application/vnd.microsoft.card.hero'

attachments_chat_message_attachment2.contentUrl=null

attachments_chat_message_attachment2.content = '{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you\'re cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \"\",\r\n      \"text\": \"text = &message back& <>= \"\",\r\n      \"displayText\": \"displayText = &message back& <>= \"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}'

attachments_chat_message_attachment2.name=null

attachments_chat_message_attachment2.thumbnailUrl=null


attachmentsArray []= attachmentsChatMessageAttachment2;
request_body.attachments(attachmentsArray)


request_body.Mentions([])

request_body.Reactions([])

request_body.MessageHistory([])




result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_message_id('chatMessage-id').patch(request_body = request_body)


```