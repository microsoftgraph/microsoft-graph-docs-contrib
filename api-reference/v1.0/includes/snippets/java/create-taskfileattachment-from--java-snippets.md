---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskFileAttachment attachmentBase = new TaskFileAttachment();
attachmentBase.name = "smile";
attachmentBase.contentBytes = Base64.getDecoder().decode("a0b1c76de9f7=");
attachmentBase.contentType = "image/gif";

graphClient.me().todo().lists("AAMkpsDRVK=").tasks("AAKdfjhgsjhgJ=").attachments()
	.buildRequest()
	.post(attachmentBase);

```