---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.subject=null

body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>'


request_body.body = body
attachments_chat_message_attachment1 = ChatMessageAttachment()
attachments_chat_message_attachment1.id = '74d20c7f34aa4a7fb74e2b30004247c5'

attachments_chat_message_attachment1.content_type = 'application/vnd.microsoft.card.thumbnail'

attachments_chat_message_attachment1.contentUrl=null

attachments_chat_message_attachment1.content = '{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\r\nAnd a <a href=\"http://microsoft.com/\">hyperlink</a>. <br>\r\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}'

attachments_chat_message_attachment1.name=null

attachments_chat_message_attachment1.thumbnailUrl=null


attachmentsArray []= attachmentsChatMessageAttachment1;
request_body.attachments(attachmentsArray)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body = request_body)


```