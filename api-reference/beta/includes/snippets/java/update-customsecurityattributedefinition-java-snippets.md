---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
customSecurityAttributeDefinition.description = "Target completion date (YYYY/MM/DD)";

graphClient.directory().customSecurityAttributeDefinitions("Engineering_ProjectDate")
	.buildRequest()
	.patch(customSecurityAttributeDefinition);

```