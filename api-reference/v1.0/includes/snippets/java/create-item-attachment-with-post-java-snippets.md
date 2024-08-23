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
body.setContent("I attached an event.");
post.setBody(body);
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
ItemAttachment attachment = new ItemAttachment();
attachment.setOdataType("#microsoft.graph.itemAttachment");
attachment.setName("Holiday event");
Event item = new Event();
item.setOdataType("microsoft.graph.event");
item.setSubject("Discuss gifts for children");
ItemBody body1 = new ItemBody();
body1.setContentType(BodyType.Html);
body1.setContent("Let's look for funding!");
item.setBody(body1);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2019-12-02T18:00:00");
start.setTimeZone("Pacific Standard Time");
item.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2019-12-02T19:00:00");
end.setTimeZone("Pacific Standard Time");
item.setEnd(end);
attachment.setItem(item);
attachments.add(attachment);
post.setAttachments(attachments);
replyPostRequestBody.setPost(post);
graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").reply().post(replyPostRequestBody);


```