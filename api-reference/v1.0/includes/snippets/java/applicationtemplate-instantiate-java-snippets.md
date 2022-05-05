---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Azure AD SAML Toolkit";

graphClient.applicationTemplates("229946b9-a9fb-45b8-9531-efa47453ac9e")
	.instantiate(ApplicationTemplateInstantiateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.build())
	.buildRequest()
	.post();

```