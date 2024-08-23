---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message message = new Message();
OffsetDateTime receivedDateTime = OffsetDateTime.parse("2016-10-19T10:37:00Z");
message.setReceivedDateTime(receivedDateTime);
OffsetDateTime sentDateTime = OffsetDateTime.parse("2016-10-19T10:37:00Z");
message.setSentDateTime(sentDateTime);
message.setHasAttachments(true);
message.setSubject("subject-value");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("content-value");
message.setBody(body);
message.setBodyPreview("bodyPreview-value");
Message result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").messages().post(message);


```