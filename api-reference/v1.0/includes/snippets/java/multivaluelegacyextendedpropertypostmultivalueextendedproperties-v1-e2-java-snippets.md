---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message message = new Message();
LinkedList<MultiValueLegacyExtendedProperty> multiValueExtendedProperties = new LinkedList<MultiValueLegacyExtendedProperty>();
MultiValueLegacyExtendedProperty multiValueLegacyExtendedProperty = new MultiValueLegacyExtendedProperty();
multiValueLegacyExtendedProperty.setId("StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette");
LinkedList<String> value = new LinkedList<String>();
value.add("Green");
value.add("Aqua");
value.add("Blue");
multiValueLegacyExtendedProperty.setValue(value);
multiValueExtendedProperties.add(multiValueLegacyExtendedProperty);
message.setMultiValueExtendedProperties(multiValueExtendedProperties);
Message result = graphClient.me().messages().byMessageId("{message-id}").patch(message);


```