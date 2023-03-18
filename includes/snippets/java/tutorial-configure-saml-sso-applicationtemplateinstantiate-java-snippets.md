---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "AWS Contoso";

graphClient.applicationTemplates("21ed01d2-ec13-4e9e-86c1-cd546719ebc4")
	.instantiate(ApplicationTemplateInstantiateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.build())
	.buildRequest()
	.post();

```