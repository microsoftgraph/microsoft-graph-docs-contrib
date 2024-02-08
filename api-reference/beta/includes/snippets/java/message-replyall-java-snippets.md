---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.replyall.ReplyAllPostRequestBody replyAllPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.replyall.ReplyAllPostRequestBody();
Message message = new Message();
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
FileAttachment attachment = new FileAttachment();
attachment.setOdataType("#microsoft.graph.fileAttachment");
attachment.setName("guidelines.txt");
byte[] contentBytes = Base64.getDecoder().decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk=");
attachment.setContentBytes(contentBytes);
attachments.add(attachment);
message.setAttachments(attachments);
replyAllPostRequestBody.setMessage(message);
replyAllPostRequestBody.setComment("Please take a look at the attached guidelines before you decide on the name.");
graphClient.me().messages().byMessageId("{message-id}").replyAll().post(replyAllPostRequestBody);


```