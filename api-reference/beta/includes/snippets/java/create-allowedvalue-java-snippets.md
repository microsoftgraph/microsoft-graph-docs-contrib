---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AllowedValue allowedValue = new AllowedValue();
allowedValue.setId("Alpine");
allowedValue.setIsActive(true);
AllowedValue result = graphClient.directory().customSecurityAttributeDefinitions().byCustomSecurityAttributeDefinitionId("{customSecurityAttributeDefinition-id}").allowedValues().post(allowedValue);


```