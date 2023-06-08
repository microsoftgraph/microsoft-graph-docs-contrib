---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExtensionProperty()
request_body.name = 'jobGroup'

request_body.data_type = 'String'

request_body.is_multi_valued = True

request_body.TargetObjects(['User', ])




result = await client.applications.by_application_id('application-id').extension_properties.post(request_body = request_body)


```