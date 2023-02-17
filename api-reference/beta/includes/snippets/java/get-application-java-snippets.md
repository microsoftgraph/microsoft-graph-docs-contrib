---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = graphClient.applications("03ef14b0-ca33-4840-8f4f-d6e91916010e")
	.buildRequest()
	.get();

```