---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentInfo attachmentInfo = new AttachmentInfo();
attachmentInfo.attachmentType = AttachmentType.FILE;
attachmentInfo.name = "flower";
attachmentInfo.size = 3483322L;

graphClient.me().todo().lists("AAMDiFkfh=").tasks("AAMkADliMm=").attachments()
	.createUploadSession(AttachmentBaseCreateUploadSessionParameterSet
		.newBuilder()
		.withAttachmentInfo(attachmentInfo)
		.build())
	.buildRequest()
	.post();

```