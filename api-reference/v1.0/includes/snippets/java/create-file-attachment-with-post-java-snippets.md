---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.groups.item.threads.item.reply.ReplyPostRequestBody replyPostRequestBody = new com.microsoft.graph.groups.item.threads.item.reply.ReplyPostRequestBody();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("Which quarter does that file cover? See my attachment.");
post.setBody(body);
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
FileAttachment attachment = new FileAttachment();
attachment.setOdataType("#microsoft.graph.fileAttachment");
attachment.setName("Another file as attachment");
byte[] contentBytes = Base64.getDecoder().decode("VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu");
attachment.setContentBytes(contentBytes);
attachments.add(attachment);
post.setAttachments(attachments);
replyPostRequestBody.setPost(post);
graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").reply().post(replyPostRequestBody);


```