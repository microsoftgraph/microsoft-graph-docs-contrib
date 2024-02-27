---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.abort_post_request_body import AbortPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AbortPostRequestBody(
	reason = "String",
)

await graph_client.print.printers.by_printer_id('printer-id').jobs.by_print_job_id('printJob-id').abort.post(request_body)


```