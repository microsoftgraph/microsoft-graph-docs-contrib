---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Contact()
request_body.parent_folder_id = 'parentFolderId-value'

request_body.birthday = DateTime('datetime-value')

request_body.file_as = 'fileAs-value'

request_body.display_name = 'displayName-value'

request_body.given_name = 'givenName-value'

request_body.initials = 'initials-value'




result = await client.me.contact_folders.by_contact_folder_id('contactFolder-id').contacts.post(request_body = request_body)


```