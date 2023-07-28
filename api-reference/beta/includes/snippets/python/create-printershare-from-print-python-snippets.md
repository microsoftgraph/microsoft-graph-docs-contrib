---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrinterShare()
request_body.name = 'name-value'

additional_data = [
'printer@odata_bind' => 'https://graph.microsoft.com/beta/print/printers/{id}', 
];
request_body.additional_data(additional_data)





result = await client.print.shares.post(request_body = request_body)


```