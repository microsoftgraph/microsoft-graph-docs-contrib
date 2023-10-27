---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Domain domain = new Domain();
domain.id = "contoso.com";

graphClient.domains()
	.buildRequest()
	.post(domain);

```