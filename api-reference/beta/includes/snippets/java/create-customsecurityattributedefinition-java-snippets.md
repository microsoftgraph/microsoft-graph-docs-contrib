---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
customSecurityAttributeDefinition.attributeSet = "Engineering";
customSecurityAttributeDefinition.description = "Target completion date";
customSecurityAttributeDefinition.isCollection = false;
customSecurityAttributeDefinition.isSearchable = true;
customSecurityAttributeDefinition.name = "ProjectDate";
customSecurityAttributeDefinition.status = "Available";
customSecurityAttributeDefinition.type = "String";
customSecurityAttributeDefinition.usePreDefinedValuesOnly = false;

graphClient.directory().customSecurityAttributeDefinitions()
	.buildRequest()
	.post(customSecurityAttributeDefinition);

```