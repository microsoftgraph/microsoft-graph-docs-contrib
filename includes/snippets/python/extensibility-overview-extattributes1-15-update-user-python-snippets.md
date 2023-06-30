---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
on_premises_extension_attributes = OnPremisesExtensionAttributes()
on_premises_extension_attributes.extension_attribute1 = 'skypeId.adeleVance'

on_premises_extension_attributes.extensionAttribute13=null


request_body.on_premises_extension_attributes = on_premises_extension_attributes



result = await client.users.by_user_id('user-id').patch(request_body = request_body)


```