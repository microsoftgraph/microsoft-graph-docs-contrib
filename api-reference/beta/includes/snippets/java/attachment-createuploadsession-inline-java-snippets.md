---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentItem attachmentItem = new AttachmentItem();
attachmentItem.attachmentType = AttachmentType.FILE;
attachmentItem.name = "scenary";
attachmentItem.size = 7208534L;
attachmentItem.isInline = true;
attachmentItem.contentId = "my_inline_picture";

graphClient.me().messages("AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMA=").attachments()
	.createUploadSession(AttachmentCreateUploadSessionParameterSet
		.newBuilder()
		.withAttachmentItem(attachmentItem)
		.build())
	.buildRequest()
	.post();

```