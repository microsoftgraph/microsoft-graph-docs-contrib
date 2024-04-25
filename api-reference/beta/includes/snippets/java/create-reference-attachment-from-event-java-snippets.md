---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ReferenceAttachment attachment = new ReferenceAttachment();
attachment.setOdataType("#microsoft.graph.referenceAttachment");
attachment.setName("Personal pictures");
attachment.setSourceUrl("https://contoso.com/personal/mario_contoso_net/Documents/Pics");
attachment.setProviderType(ReferenceAttachmentProvider.OneDriveConsumer);
attachment.setPermission(ReferenceAttachmentPermission.Edit);
attachment.setIsFolder(true);
Attachment result = graphClient.me().events().byEventId("{event-id}").attachments().post(attachment);


```