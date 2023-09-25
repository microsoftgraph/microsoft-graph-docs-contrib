---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Contoso IWA App";

graphClient.applicationTemplates("8adf8e6e-67b2-4cf2-a259-e3dc5476c621")
	.instantiate(ApplicationTemplateInstantiateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.build())
	.buildRequest()
	.post();

```