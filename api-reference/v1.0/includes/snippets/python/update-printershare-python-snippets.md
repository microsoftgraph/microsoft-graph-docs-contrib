---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.printer_share import PrinterShare
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrinterShare(
	display_name = "PrinterShare Name",
	allow_all_users = False,
	additional_data = {
			"printer@odata_bind" : "https://graph.microsoft.com/v1.0/print/printers/{printerId}",
	}
)

result = await graph_client.print.shares.by_printer_share_id('printerShare-id').patch(request_body)


```