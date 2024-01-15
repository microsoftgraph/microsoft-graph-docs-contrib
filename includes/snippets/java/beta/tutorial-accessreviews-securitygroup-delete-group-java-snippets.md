---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.groups("eb75ccd2-59ef-48b7-8f76-cc3f33f899f4")
	.buildRequest()
	.delete();

```