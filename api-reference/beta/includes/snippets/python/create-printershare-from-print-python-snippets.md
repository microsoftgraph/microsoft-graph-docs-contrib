---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.printer_share import PrinterShare

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrinterShare(
	name = "name-value",
	additional_data = {
			"printer@odata_bind" : "https://graph.microsoft.com/beta/print/printers/{id}",
	}
)

result = await graph_client.print.shares.post(request_body)


```