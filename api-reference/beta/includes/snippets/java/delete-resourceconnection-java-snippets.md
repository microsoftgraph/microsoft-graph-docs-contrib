---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().windows().updates().resourceConnections("85fbecb2-e407-34e9-9298-4d587857795d")
	.buildRequest()
	.delete();

```