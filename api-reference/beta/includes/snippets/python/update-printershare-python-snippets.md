---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrinterShare(
	display_name = "ShareName",
	allow_all_users = True,
	additional_data = {
			"printer@odata_bind" : "https://graph.microsoft.com/beta/print/printers/{id}",
	}
)

result = await graph_client.print.shares.by_printer_share_id('printerShare-id').patch(request_body)


```