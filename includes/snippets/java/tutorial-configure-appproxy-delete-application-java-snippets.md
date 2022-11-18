---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.applications("bf21f7e9-9d25-4da2-82ab-7fdd85049f83")
	.buildRequest()
	.delete();

```