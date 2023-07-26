---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DirectoryRole()
request_body.role_template_id = 'fe930be7-5e62-47db-91af-98c3a49a38b1'




result = await client.directory_roles.post(request_body = request_body)


```