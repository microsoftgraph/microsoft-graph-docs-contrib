---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomSecurityAttributeDefinition()
request_body.status = 'Deprecated'




result = await client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').patch(request_body = request_body)


```