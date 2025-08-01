---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.partners.billing.usage.billed.microsoft_graph_partners_billing_export.export_post_request_body import ExportPostRequestBody
from msgraph_beta.generated.models.attribute_set import AttributeSet
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportPostRequestBody(
	invoice_id = "G016907411",
	attribute_set = AttributeSet.Full,
)

result = await graph_client.reports.partners.billing.usage.billed.microsoft_graph_partners_billing_export.post(request_body)


```