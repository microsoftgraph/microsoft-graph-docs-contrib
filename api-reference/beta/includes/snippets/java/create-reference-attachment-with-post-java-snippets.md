---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.groups.item.threads.item.reply.ReplyPostRequestBody replyPostRequestBody = new com.microsoft.graph.beta.groups.item.threads.item.reply.ReplyPostRequestBody();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("I attached a reference to a file on OneDrive.");
post.setBody(body);
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
ReferenceAttachment attachment = new ReferenceAttachment();
attachment.setOdataType("#microsoft.graph.referenceAttachment");
attachment.setName("Personal pictures");
attachment.setSourceUrl("https://contoso.com/personal/mario_contoso_net/Documents/Pics");
attachment.setProviderType(ReferenceAttachmentProvider.OneDriveConsumer);
attachment.setPermission(ReferenceAttachmentPermission.Edit);
attachment.setIsFolder(true);
attachments.add(attachment);
post.setAttachments(attachments);
replyPostRequestBody.setPost(post);
graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").reply().post(replyPostRequestBody);


```