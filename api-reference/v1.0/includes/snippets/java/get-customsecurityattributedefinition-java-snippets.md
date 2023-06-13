---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = graphClient.directory().customSecurityAttributeDefinitions("Engineering_ProjectDate")
	.buildRequest()
	.get();

```