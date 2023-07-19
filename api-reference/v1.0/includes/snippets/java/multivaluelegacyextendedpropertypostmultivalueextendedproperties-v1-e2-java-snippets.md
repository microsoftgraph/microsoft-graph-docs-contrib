---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
LinkedList<MultiValueLegacyExtendedProperty> multiValueExtendedPropertiesList = new LinkedList<MultiValueLegacyExtendedProperty>();
MultiValueLegacyExtendedProperty multiValueExtendedProperties = new MultiValueLegacyExtendedProperty();
multiValueExtendedProperties.id = "StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette";
LinkedList<String> valueList = new LinkedList<String>();
valueList.add("Green");
valueList.add("Aqua");
valueList.add("Blue");
multiValueExtendedProperties.value = valueList;
multiValueExtendedPropertiesList.add(multiValueExtendedProperties);
MultiValueLegacyExtendedPropertyCollectionResponse multiValueLegacyExtendedPropertyCollectionResponse = new MultiValueLegacyExtendedPropertyCollectionResponse();
multiValueLegacyExtendedPropertyCollectionResponse.value = multiValueExtendedPropertiesList;
MultiValueLegacyExtendedPropertyCollectionPage multiValueLegacyExtendedPropertyCollectionPage = new MultiValueLegacyExtendedPropertyCollectionPage(multiValueLegacyExtendedPropertyCollectionResponse, null);
message.multiValueExtendedProperties = multiValueLegacyExtendedPropertyCollectionPage;

graphClient.me().messages("AAMkAGE1M2_as77AACHsLrBBBA=")
	.buildRequest()
	.patch(message);

```