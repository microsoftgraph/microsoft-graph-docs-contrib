---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomSecurityAttributeDefinition()
request_body.attribute_set = 'Engineering'

request_body.description = 'Target completion date'

request_body.is_collection = False

request_body.is_searchable = True

request_body.name = 'ProjectDate'

request_body.status = 'Available'

request_body.type = 'String'

request_body.use_pre_defined_values_only = False




result = await client.directory.custom_security_attribute_definitions.post(request_body = request_body)


```