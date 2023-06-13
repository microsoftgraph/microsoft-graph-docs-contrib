---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ContactFolder()
request_body.display_name = 'Family'




result = await client.me.contact_folders.by_contact_folder_id('contactFolder-id').child_folders.post(request_body = request_body)


```