---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeDefinitionCollectionPage customSecurityAttributeDefinitions = graphClient.directory().customSecurityAttributeDefinitions()
	.buildRequest()
	.filter("name eq 'Project' and status eq 'Available'")
	.get();

```