---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("3b8ceebc-49e6-4e0c-9e14-c906374a7ef6")
	.buildRequest()
	.delete();

```