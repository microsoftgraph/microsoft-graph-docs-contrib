---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.createreplyall.CreateReplyAllPostRequestBody createReplyAllPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.createreplyall.CreateReplyAllPostRequestBody();
Message message = new Message();
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
FileAttachment attachment = new FileAttachment();
attachment.setOdataType("#microsoft.graph.fileAttachment");
attachment.setName("guidelines.txt");
byte[] contentBytes = Base64.getDecoder().decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk=");
attachment.setContentBytes(contentBytes);
attachments.add(attachment);
message.setAttachments(attachments);
createReplyAllPostRequestBody.setMessage(message);
createReplyAllPostRequestBody.setComment("if the project gets approved, please take a look at the attached guidelines before you decide on the name.");
var result = graphClient.me().messages().byMessageId("{message-id}").createReplyAll().post(createReplyAllPostRequestBody);


```