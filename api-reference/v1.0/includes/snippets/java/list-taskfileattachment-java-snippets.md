---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentBaseCollectionPage attachments = graphClient.me().todo().lists("AAMehdkfuhgAAA=").tasks("AAMkAGUzY5QKjAAA=").attachments()
	.buildRequest()
	.get();

```