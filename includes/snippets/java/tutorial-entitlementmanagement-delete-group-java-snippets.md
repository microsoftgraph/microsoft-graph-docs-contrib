---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.groups("a468eaea-ed6c-4290-98d2-a96bb1cb4209")
	.buildRequest()
	.delete();

```