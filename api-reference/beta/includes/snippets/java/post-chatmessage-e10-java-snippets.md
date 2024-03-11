---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
chatMessage.setSubject(null);
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment chatMessageAttachment = new ChatMessageAttachment();
chatMessageAttachment.setId("74d20c7f34aa4a7fb74e2b30004247c5");
chatMessageAttachment.setContentType("application/vnd.microsoft.card.thumbnail");
chatMessageAttachment.setContentUrl(null);
chatMessageAttachment.setContent("{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\r\nAnd a <a href=\"http://microsoft.com/\">hyperlink</a>. <br>\r\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}");
chatMessageAttachment.setName(null);
chatMessageAttachment.setThumbnailUrl(null);
chatMessageAttachment.setTeamsAppId("881b8843-fd91-49e5-9ac2-47ec497ffbe5");
attachments.add(chatMessageAttachment);
chatMessage.setAttachments(attachments);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```