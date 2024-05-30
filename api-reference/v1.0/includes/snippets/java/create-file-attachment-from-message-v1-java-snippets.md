---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileAttachment attachment = new FileAttachment();
attachment.setOdataType("#microsoft.graph.fileAttachment");
attachment.setName("smile");
byte[] contentBytes = Base64.getDecoder().decode("R0lGODdhEAYEAA7");
attachment.setContentBytes(contentBytes);
Attachment result = graphClient.me().messages().byMessageId("{message-id}").attachments().post(attachment);


```