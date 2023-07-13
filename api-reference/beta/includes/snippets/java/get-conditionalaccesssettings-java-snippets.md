---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessSettings conditionalAccessSettings = graphClient.networkAccess().settings().conditionalAccess()
	.buildRequest()
	.get();

```