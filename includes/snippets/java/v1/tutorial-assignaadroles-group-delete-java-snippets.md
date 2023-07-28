---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.groups("e77cbb23-0ff2-4e18-819c-690f58269752")
	.buildRequest()
	.delete();

```