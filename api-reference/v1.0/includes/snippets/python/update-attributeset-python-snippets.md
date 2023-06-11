---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AttributeSet()
request_body.description = 'Attributes for engineering team'

request_body.MaxAttributesPerSet = 20




result = await client.directory.attribute_sets.by_attribute_set_id('attributeSet-id').patch(request_body = request_body)


```