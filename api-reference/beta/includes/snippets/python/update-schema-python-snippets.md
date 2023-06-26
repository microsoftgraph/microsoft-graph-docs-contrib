---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Schema()
request_body.base_type = 'microsoft.graph.externalItem'

properties_property1 = Property()
properties_property1.name = 'ticketTitle'

properties_property1.type(PropertyType.String('propertytype.string'))

properties_property1.is_searchable = True

properties_property1.is_retrievable = True

properties_property1.Labels([properties_property1.label(Label.Title('label.title'))
])


propertiesArray []= propertiesProperty1;
properties_property2 = Property()
properties_property2.name = 'priority'

properties_property2.type(PropertyType.String('propertytype.string'))

properties_property2.is_queryable = True

properties_property2.is_retrievable = True

properties_property2.is_searchable = False


propertiesArray []= propertiesProperty2;
properties_property3 = Property()
properties_property3.name = 'assignee'

properties_property3.type(PropertyType.String('propertytype.string'))

properties_property3.is_retrievable = True


propertiesArray []= propertiesProperty3;
request_body.properties(propertiesArray)





result = await client.external.connections.by_connection_id('externalConnection-id').schema.patch(request_body = request_body)


```