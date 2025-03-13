---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
customSecurityAttributeDefinition.setDescription("Target completion date (YYYY/MM/DD)");
CustomSecurityAttributeDefinition result = graphClient.directory().customSecurityAttributeDefinitions().byCustomSecurityAttributeDefinitionId("{customSecurityAttributeDefinition-id}").patch(customSecurityAttributeDefinition);


```