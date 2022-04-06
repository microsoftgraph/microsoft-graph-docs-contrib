---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SchemaExtension schemaExtension = new SchemaExtension();
schemaExtension.owner = "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa";
LinkedList<ExtensionSchemaProperty> propertiesList = new LinkedList<ExtensionSchemaProperty>();
ExtensionSchemaProperty properties = new ExtensionSchemaProperty();
properties.name = "courseId";
properties.type = "Integer";
propertiesList.add(properties);
ExtensionSchemaProperty properties1 = new ExtensionSchemaProperty();
properties1.name = "courseName";
properties1.type = "String";
propertiesList.add(properties1);
ExtensionSchemaProperty properties2 = new ExtensionSchemaProperty();
properties2.name = "courseType";
properties2.type = "String";
propertiesList.add(properties2);
ExtensionSchemaProperty properties3 = new ExtensionSchemaProperty();
properties3.name = "courseSupervisors";
properties3.type = "String";
propertiesList.add(properties3);
schemaExtension.properties = propertiesList;

graphClient.schemaExtensions("exto6x7sfft_courses")
	.buildRequest()
	.patch(schemaExtension);

```