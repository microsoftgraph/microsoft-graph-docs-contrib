---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().todo().lists("AAMehdkfuhgAAA=").tasks("AAMkAGUzY5QKjAAA=").attachments("AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8=")
	.buildRequest()
	.delete();

```