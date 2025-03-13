---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SchemaExtension schemaExtension = new SchemaExtension();
schemaExtension.setId("bellowscollege_courses");
schemaExtension.setDescription("Bellows College training courses extensions");
LinkedList<String> targetTypes = new LinkedList<String>();
targetTypes.add("Group");
schemaExtension.setTargetTypes(targetTypes);
schemaExtension.setOwner("d1e6f196-fca3-48ad-8cd3-1a98e3bd46d2");
LinkedList<ExtensionSchemaProperty> properties = new LinkedList<ExtensionSchemaProperty>();
ExtensionSchemaProperty extensionSchemaProperty = new ExtensionSchemaProperty();
extensionSchemaProperty.setName("courseId");
extensionSchemaProperty.setType("Integer");
properties.add(extensionSchemaProperty);
ExtensionSchemaProperty extensionSchemaProperty1 = new ExtensionSchemaProperty();
extensionSchemaProperty1.setName("courseName");
extensionSchemaProperty1.setType("String");
properties.add(extensionSchemaProperty1);
ExtensionSchemaProperty extensionSchemaProperty2 = new ExtensionSchemaProperty();
extensionSchemaProperty2.setName("courseType");
extensionSchemaProperty2.setType("String");
properties.add(extensionSchemaProperty2);
schemaExtension.setProperties(properties);
SchemaExtension result = graphClient.schemaExtensions().post(schemaExtension);


```