---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeDefinitionCollectionPage customSecurityAttributeDefinitions = graphClient.directory().customSecurityAttributeDefinitions()
	.buildRequest()
	.filter("attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'")
	.get();

```