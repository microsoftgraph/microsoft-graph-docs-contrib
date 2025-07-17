---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.print.printers.item.jobs.item.abort.abort_post_request_body import AbortPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AbortPostRequestBody(
	reason = "String",
)

await graph_client.print.printers.by_printer_id('printer-id').jobs.by_print_job_id('printJob-id').abort.post(request_body)


```