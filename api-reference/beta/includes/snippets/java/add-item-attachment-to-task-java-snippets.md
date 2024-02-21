---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemAttachment attachment = new ItemAttachment();
attachment.setOdataType("#microsoft.graph.itemAttachment");
attachment.setName("Holiday event");
Event item = new Event();
item.setOdataType("microsoft.graph.event");
item.setSubject("Discuss gifts for children");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Let's look for funding!");
item.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2020-01-12T18:00:00");
start.setTimeZone("Pacific Standard Time");
item.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2020-01-12T19:00:00");
end.setTimeZone("Pacific Standard Time");
item.setEnd(end);
attachment.setItem(item);
Attachment result = graphClient.me().outlook().tasks().byOutlookTaskId("{outlookTask-id}").attachments().post(attachment);


```