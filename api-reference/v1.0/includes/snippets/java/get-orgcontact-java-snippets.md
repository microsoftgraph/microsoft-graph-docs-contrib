---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OrgContact orgContact = graphClient.contacts("25caf6a2-d5cb-470d-8940-20ba795ef62d")
	.buildRequest()
	.get();

```