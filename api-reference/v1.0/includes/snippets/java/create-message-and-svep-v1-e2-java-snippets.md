---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
LinkedList<SingleValueLegacyExtendedProperty> singleValueExtendedPropertiesList = new LinkedList<SingleValueLegacyExtendedProperty>();
SingleValueLegacyExtendedProperty singleValueExtendedProperties = new SingleValueLegacyExtendedProperty();
singleValueExtendedProperties.id = "String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color";
singleValueExtendedProperties.value = "Green";
singleValueExtendedPropertiesList.add(singleValueExtendedProperties);
SingleValueLegacyExtendedPropertyCollectionResponse singleValueLegacyExtendedPropertyCollectionResponse = new SingleValueLegacyExtendedPropertyCollectionResponse();
singleValueLegacyExtendedPropertyCollectionResponse.value = singleValueExtendedPropertiesList;
SingleValueLegacyExtendedPropertyCollectionPage singleValueLegacyExtendedPropertyCollectionPage = new SingleValueLegacyExtendedPropertyCollectionPage(singleValueLegacyExtendedPropertyCollectionResponse, null);
message.singleValueExtendedProperties = singleValueLegacyExtendedPropertyCollectionPage;

graphClient.me().messages("AAMkAGE1M2_bs88AACHsLqWAAA=")
	.buildRequest()
	.patch(message);

```