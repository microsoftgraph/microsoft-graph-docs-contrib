---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Site site = graphClient.groups("{group-id}").sites("root")
	.buildRequest()
	.get();

```