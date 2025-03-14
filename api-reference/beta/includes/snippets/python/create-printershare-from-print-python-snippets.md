---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.printer_share import PrinterShare
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrinterShare(
	name = "name-value",
	additional_data = {
			"printer@odata_bind" : "https://graph.microsoft.com/beta/print/printers/{id}",
	}
)

result = await graph_client.print.shares.post(request_body)


```