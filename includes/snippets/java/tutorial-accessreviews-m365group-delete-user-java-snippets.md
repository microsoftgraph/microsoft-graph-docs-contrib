---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("baf1b0a0-1f9a-4a56-9884-6a30824f8d20")
	.buildRequest()
	.delete();

```