---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
customSecurityAttributeDefinition.setAttributeSet("Engineering");
customSecurityAttributeDefinition.setDescription("Target completion date");
customSecurityAttributeDefinition.setIsCollection(false);
customSecurityAttributeDefinition.setIsSearchable(true);
customSecurityAttributeDefinition.setName("ProjectDate");
customSecurityAttributeDefinition.setStatus("Available");
customSecurityAttributeDefinition.setType("String");
customSecurityAttributeDefinition.setUsePreDefinedValuesOnly(false);
CustomSecurityAttributeDefinition result = graphClient.directory().customSecurityAttributeDefinitions().post(customSecurityAttributeDefinition);


```