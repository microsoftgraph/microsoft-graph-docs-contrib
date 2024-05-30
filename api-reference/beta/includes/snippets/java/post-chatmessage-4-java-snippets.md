---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment chatMessageAttachment = new ChatMessageAttachment();
chatMessageAttachment.setId("153fa47d-18c9-4179-be08-9879815a9f90");
chatMessageAttachment.setContentType("reference");
chatMessageAttachment.setContentUrl("https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx");
chatMessageAttachment.setName("Budget.docx");
attachments.add(chatMessageAttachment);
chatMessage.setAttachments(attachments);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```