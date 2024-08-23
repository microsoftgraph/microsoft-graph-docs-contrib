---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.attachments.createuploadsession.CreateUploadSessionPostRequestBody createUploadSessionPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.attachments.createuploadsession.CreateUploadSessionPostRequestBody();
AttachmentItem attachmentItem = new AttachmentItem();
attachmentItem.setAttachmentType(AttachmentType.File);
attachmentItem.setName("flower");
attachmentItem.setSize(3483322L);
createUploadSessionPostRequestBody.setAttachmentItem(attachmentItem);
var result = graphClient.me().messages().byMessageId("{message-id}").attachments().createUploadSession().post(createUploadSessionPostRequestBody);


```