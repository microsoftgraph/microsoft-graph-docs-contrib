---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AllowedValue()
request_body.id = 'Alpine'

request_body.is_active = True




result = await client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').allowed_values.post(request_body = request_body)


```