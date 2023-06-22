---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MailSearchFolder()
request_body.@odata_type = 'microsoft.graph.mailSearchFolder'

request_body.display_name = 'Weekly digests'

request_body.include_nested_folders = True

request_body.SourceFolderIds(['AQMkADYAAAIBDAAAAA==', ])

request_body.filter_query = 'contains(subject, \'weekly digest\')'




result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.post(request_body = request_body)


```