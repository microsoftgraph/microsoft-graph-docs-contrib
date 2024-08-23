---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.print.printers.by_printer_id('printer-id').jobs.by_print_job_id('printJob-id').cancel.post()


```