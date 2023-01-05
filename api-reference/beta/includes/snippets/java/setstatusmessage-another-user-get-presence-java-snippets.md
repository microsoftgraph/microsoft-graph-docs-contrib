---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Presence presence = graphClient.users("fa8bf3dc-eca7-46b7-bad1-db199b62afc3").presence()
	.buildRequest()
	.get();

```