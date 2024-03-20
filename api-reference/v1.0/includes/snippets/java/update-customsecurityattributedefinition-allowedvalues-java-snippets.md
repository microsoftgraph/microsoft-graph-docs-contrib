---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomSecurityAttributeDefinition customSecurityAttributeDefinition = new CustomSecurityAttributeDefinition();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> allowedValuesDelta = new LinkedList<Object>();
 property = new ();
property.setId("Baker");
property.setIsActive(false);
allowedValuesDelta.add(property);
 property1 = new ();
property1.setId("Skagit");
property1.setIsActive(true);
allowedValuesDelta.add(property1);
additionalData.put("allowedValues@delta", allowedValuesDelta);
customSecurityAttributeDefinition.setAdditionalData(additionalData);
CustomSecurityAttributeDefinition result = graphClient.directory().customSecurityAttributeDefinitions().byCustomSecurityAttributeDefinitionId("{customSecurityAttributeDefinition-id}").patch(customSecurityAttributeDefinition, requestConfiguration -> {
	requestConfiguration.headers.add("OData-Version", "4.01");
});


```