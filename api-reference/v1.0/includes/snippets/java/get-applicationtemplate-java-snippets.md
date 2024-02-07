---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationTemplate applicationTemplate = graphClient.applicationTemplates("00000007-0000-0000-c000-000000000000")
	.buildRequest()
	.get();

```