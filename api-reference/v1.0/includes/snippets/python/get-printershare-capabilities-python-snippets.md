---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.print.shares.item.printer_share_item_request_builder import PrinterShareItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = PrinterShareItemRequestBuilder.PrinterShareItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","capabilities"],
)

request_configuration = PrinterShareItemRequestBuilder.PrinterShareItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.print.shares.by_printer_share_id('printerShare-id').get(request_configuration = request_configuration)


```