---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.groups("59ab642a-2776-4e32-9b68-9ff7a47b7f6a")
	.buildRequest()
	.delete();

```