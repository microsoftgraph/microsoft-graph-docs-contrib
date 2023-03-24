---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentItem attachmentItem = new AttachmentItem();
attachmentItem.attachmentType = AttachmentType.FILE;
attachmentItem.name = "flower";
attachmentItem.size = 3483322L;

graphClient.me().events("AAMkADU5CCmSAAA=").attachments()
	.createUploadSession(AttachmentCreateUploadSessionParameterSet
		.newBuilder()
		.withAttachmentItem(attachmentItem)
		.build())
	.buildRequest()
	.post();

```