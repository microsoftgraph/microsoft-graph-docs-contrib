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
LinkedList<AllowedValue> allowedValuesList = new LinkedList<AllowedValue>();
AllowedValue allowedValues = new AllowedValue();
allowedValues.id = "Alpine";
allowedValues.isActive = true;
allowedValuesList.add(allowedValues);
AllowedValue allowedValues1 = new AllowedValue();
allowedValues1.id = "Baker";
allowedValues1.isActive = true;
allowedValuesList.add(allowedValues1);
AllowedValue allowedValues2 = new AllowedValue();
allowedValues2.id = "Cascade";
allowedValues2.isActive = true;
allowedValuesList.add(allowedValues2);
AllowedValueCollectionResponse allowedValueCollectionResponse = new AllowedValueCollectionResponse();
allowedValueCollectionResponse.value = allowedValuesList;
AllowedValueCollectionPage allowedValueCollectionPage = new AllowedValueCollectionPage(allowedValueCollectionResponse, null);
customSecurityAttributeDefinition.allowedValues = allowedValueCollectionPage;

graphClient.directory().customSecurityAttributeDefinitions()
	.buildRequest()
	.post(customSecurityAttributeDefinition);

```