---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SchemaExtension schemaExtension = new SchemaExtension();
schemaExtension.setOwner("ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa");
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
ExtensionSchemaProperty extensionSchemaProperty3 = new ExtensionSchemaProperty();
extensionSchemaProperty3.setName("courseSupervisors");
extensionSchemaProperty3.setType("String");
properties.add(extensionSchemaProperty3);
schemaExtension.setProperties(properties);
SchemaExtension result = graphClient.schemaExtensions().bySchemaExtensionId("{schemaExtension-id}").patch(schemaExtension);


```