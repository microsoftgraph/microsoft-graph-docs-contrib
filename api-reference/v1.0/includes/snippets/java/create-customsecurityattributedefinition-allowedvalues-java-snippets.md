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
LinkedList<AllowedValue> allowedValues = new LinkedList<AllowedValue>();
AllowedValue allowedValue = new AllowedValue();
allowedValue.setId("Alpine");
allowedValue.setIsActive(true);
allowedValues.add(allowedValue);
AllowedValue allowedValue1 = new AllowedValue();
allowedValue1.setId("Baker");
allowedValue1.setIsActive(true);
allowedValues.add(allowedValue1);
AllowedValue allowedValue2 = new AllowedValue();
allowedValue2.setId("Cascade");
allowedValue2.setIsActive(true);
allowedValues.add(allowedValue2);
customSecurityAttributeDefinition.setAllowedValues(allowedValues);
CustomSecurityAttributeDefinition result = graphClient.directory().customSecurityAttributeDefinitions().post(customSecurityAttributeDefinition);


```