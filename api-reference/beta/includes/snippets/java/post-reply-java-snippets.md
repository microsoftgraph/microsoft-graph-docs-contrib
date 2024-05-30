---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.groups.item.threads.item.posts.item.reply.ReplyPostRequestBody replyPostRequestBody = new com.microsoft.graph.beta.groups.item.threads.item.posts.item.reply.ReplyPostRequestBody();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("content-value");
post.setBody(body);
OffsetDateTime receivedDateTime = OffsetDateTime.parse("2016-10-19T10:37:00Z");
post.setReceivedDateTime(receivedDateTime);
post.setHasAttachments(true);
Recipient from = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("name-value");
emailAddress.setAddress("address-value");
from.setEmailAddress(emailAddress);
post.setFrom(from);
Recipient sender = new Recipient();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.setName("name-value");
emailAddress1.setAddress("address-value");
sender.setEmailAddress(emailAddress1);
post.setSender(sender);
post.setConversationThreadId("conversationThreadId-value");
LinkedList<Recipient> newParticipants = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress2 = new EmailAddress();
emailAddress2.setName("name-value");
emailAddress2.setAddress("address-value");
recipient.setEmailAddress(emailAddress2);
newParticipants.add(recipient);
post.setNewParticipants(newParticipants);
post.setConversationId("conversationId-value");
OffsetDateTime createdDateTime = OffsetDateTime.parse("2016-10-19T10:37:00Z");
post.setCreatedDateTime(createdDateTime);
OffsetDateTime lastModifiedDateTime = OffsetDateTime.parse("2016-10-19T10:37:00Z");
post.setLastModifiedDateTime(lastModifiedDateTime);
post.setChangeKey("changeKey-value");
LinkedList<String> categories = new LinkedList<String>();
categories.add("categories-value");
post.setCategories(categories);
post.setId("id-value");
Post inReplyTo = new Post();
post.setInReplyTo(inReplyTo);
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
FileAttachment attachment = new FileAttachment();
attachment.setOdataType("#microsoft.graph.fileAttachment");
OffsetDateTime lastModifiedDateTime1 = OffsetDateTime.parse("2016-10-19T10:37:00Z");
attachment.setLastModifiedDateTime(lastModifiedDateTime1);
attachment.setName("name-value");
attachment.setContentType("contentType-value");
attachment.setSize(99);
attachment.setIsInline(true);
attachment.setId("id-value");
attachments.add(attachment);
post.setAttachments(attachments);
replyPostRequestBody.setPost(post);
graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").posts().byPostId("{post-id}").reply().post(replyPostRequestBody);


```