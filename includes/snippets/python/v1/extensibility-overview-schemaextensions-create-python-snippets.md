---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SchemaExtension()
request_body.id = 'graphLearnCourses'

request_body.description = 'Graph Learn training courses extensions'

request_body.TargetTypes(['user', ])

properties_extension_schema_property1 = ExtensionSchemaProperty()
properties_extension_schema_property1.name = 'courseId'

properties_extension_schema_property1.type = 'Integer'


propertiesArray []= propertiesExtensionSchemaProperty1;
properties_extension_schema_property2 = ExtensionSchemaProperty()
properties_extension_schema_property2.name = 'courseName'

properties_extension_schema_property2.type = 'String'


propertiesArray []= propertiesExtensionSchemaProperty2;
properties_extension_schema_property3 = ExtensionSchemaProperty()
properties_extension_schema_property3.name = 'courseType'

properties_extension_schema_property3.type = 'String'


propertiesArray []= propertiesExtensionSchemaProperty3;
request_body.properties(propertiesArray)





result = await client.schema_extensions.post(request_body = request_body)


```