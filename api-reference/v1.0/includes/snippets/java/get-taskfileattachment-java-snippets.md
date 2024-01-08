---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentBase attachmentBase = graphClient.me().todo().lists("AAMehdkfuhgAAA=").tasks("AAMkAGUzY5QKjAAA=").attachments("AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8=")
	.buildRequest()
	.get();

```