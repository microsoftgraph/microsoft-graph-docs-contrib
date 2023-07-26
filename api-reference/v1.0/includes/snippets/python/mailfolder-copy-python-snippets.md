---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyPostRequestBody()
request_body.destination_id = 'destinationId-value'




result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').copy.post(request_body = request_body)


```