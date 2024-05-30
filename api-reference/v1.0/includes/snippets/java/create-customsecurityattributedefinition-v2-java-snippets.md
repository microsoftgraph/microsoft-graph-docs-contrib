---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
customSecurityAttributeDefinition.setAttributeSet("Engineering");
customSecurityAttributeDefinition.setDescription("Active projects for user");
customSecurityAttributeDefinition.setIsCollection(true);
customSecurityAttributeDefinition.setIsSearchable(true);
customSecurityAttributeDefinition.setName("Project");
customSecurityAttributeDefinition.setStatus("Available");
customSecurityAttributeDefinition.setType("String");
customSecurityAttributeDefinition.setUsePreDefinedValuesOnly(true);
CustomSecurityAttributeDefinition result = graphClient.directory().customSecurityAttributeDefinitions().post(customSecurityAttributeDefinition);


```