---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("10f17b99-784c-4526-8747-aec8a3159d6a").manager().reference()
	.buildRequest()
	.delete();

```