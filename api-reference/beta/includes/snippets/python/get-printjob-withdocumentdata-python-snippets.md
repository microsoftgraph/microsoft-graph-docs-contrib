---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.print.printers.item.jobs.item.print_job_item_request_builder import PrintJobItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = PrintJobItemRequestBuilder.PrintJobItemRequestBuilderGetQueryParameters(
		expand = ["documents"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.print.printers.by_printer_id('printer-id').jobs.by_print_job_id('printJob-id').get(request_configuration = request_configuration)


```