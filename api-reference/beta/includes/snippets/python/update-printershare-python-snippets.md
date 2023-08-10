---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrinterShare()
request_body.display_name = 'ShareName'

request_body.allow_all_users = True

additional_data = [
'printer@odata_bind' => 'https://graph.microsoft.com/beta/print/printers/{id}', 
];
request_body.additional_data(additional_data)





result = await client.print.shares.by_share_id('printerShare-id').patch(request_body = request_body)


```