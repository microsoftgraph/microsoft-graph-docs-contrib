---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment chatMessageAttachment = new ChatMessageAttachment();
chatMessageAttachment.setId("74d20c7f34aa4a7fb74e2b30004247c5");
chatMessageAttachment.setContentType("application/vnd.microsoft.card.fluidEmbedCard");
chatMessageAttachment.setContent("{\"componentUrl\": \"{LoopComponent_url}\", \"sourceType\": \"Compose\"}");
chatMessageAttachment.setName(null);
chatMessageAttachment.setThumbnailUrl(null);
chatMessageAttachment.setTeamsAppId("FluidEmbedCard");
attachments.add(chatMessageAttachment);
chatMessage.setAttachments(attachments);
ChatMessage result = graphClient.chats().byChatId("{chat-id}").messages().post(chatMessage);


```