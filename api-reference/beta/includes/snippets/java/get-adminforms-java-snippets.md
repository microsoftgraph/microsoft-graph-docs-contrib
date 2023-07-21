---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminForms adminForms = graphClient.admin().forms()
	.buildRequest()
	.get();

```