---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message message = new Message();
LinkedList<SingleValueLegacyExtendedProperty> singleValueExtendedProperties = new LinkedList<SingleValueLegacyExtendedProperty>();
SingleValueLegacyExtendedProperty singleValueLegacyExtendedProperty = new SingleValueLegacyExtendedProperty();
singleValueLegacyExtendedProperty.setId("String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color");
singleValueLegacyExtendedProperty.setValue("Green");
singleValueExtendedProperties.add(singleValueLegacyExtendedProperty);
message.setSingleValueExtendedProperties(singleValueExtendedProperties);
Message result = graphClient.me().messages().byMessageId("{message-id}").patch(message);


```