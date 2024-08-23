---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.printer_share import PrinterShare

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrinterShare(
	display_name = "ShareName",
	allow_all_users = False,
	additional_data = {
			"printer@odata_bind" : "https://graph.microsoft.com/v1.0/print/printers/{printerId}",
	}
)

result = await graph_client.print.shares.post(request_body)


```