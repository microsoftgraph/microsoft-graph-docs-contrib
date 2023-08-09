---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MailFolder()
request_body.display_name = 'displayName-value'




result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').patch(request_body = request_body)


```