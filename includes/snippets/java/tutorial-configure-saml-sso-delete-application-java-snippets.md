---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.applications("a9be408a-6c31-4141-8cea-52fcd4a61be8")
	.buildRequest()
	.delete();

```