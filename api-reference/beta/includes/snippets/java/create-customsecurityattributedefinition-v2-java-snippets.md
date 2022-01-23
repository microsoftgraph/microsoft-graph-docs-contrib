---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
customSecurityAttributeDefinition.attributeSet = "Engineering";
customSecurityAttributeDefinition.description = "Active projects for user";
customSecurityAttributeDefinition.isCollection = true;
customSecurityAttributeDefinition.isSearchable = true;
customSecurityAttributeDefinition.name = "Project";
customSecurityAttributeDefinition.status = "Available";
customSecurityAttributeDefinition.type = "String";
customSecurityAttributeDefinition.usePreDefinedValuesOnly = true;

graphClient.directory().customSecurityAttributeDefinitions()
	.buildRequest()
	.post(customSecurityAttributeDefinition);

```