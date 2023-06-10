---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MailFolder()
request_body.@odata_type = 'microsoft.graph.mailSearchFolder'

request_body.display_name = 'Weekly digests'

additional_data = [
'include_nested_folders' => true,
'source_folder_ids' => ['AQMkADYAAAIBDAAAAA==', ],
'filter_query' => 'contains(subject, \'weekly digest\')', 
];
request_body.additional_data(additional_data)





result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.post(request_body = request_body)


```