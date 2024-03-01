---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.export_post_request_body import ExportPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExportPostRequestBody(
	invoice_id = "G016907411",
	attribute_set = AttributeSet.Full,
)

result = await graph_client.reports.partners.billing.reconciliation.billed.microsoft_graph_partners_billing_export.post(request_body)


```