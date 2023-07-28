---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrinterShare()
request_body.display_name = 'PrinterShare Name'

request_body.allow_all_users = False

additional_data = [
'printer@odata_bind' => 'https://graph.microsoft.com/v1.0/print/printers/{printerId}', 
];
request_body.additional_data(additional_data)





result = await client.print.shares.by_share_id('printerShare-id').patch(request_body = request_body)


```