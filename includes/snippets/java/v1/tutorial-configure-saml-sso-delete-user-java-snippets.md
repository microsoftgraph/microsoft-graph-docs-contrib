---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("040f9599-7c0f-4f94-aa75-8394c4c6ea9b")
	.buildRequest()
	.delete();

```