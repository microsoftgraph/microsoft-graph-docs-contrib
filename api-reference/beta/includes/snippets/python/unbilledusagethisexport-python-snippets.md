---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.partners.billing.usage.unbilled.microsoft_graph_partners_billing_export.export_post_request_body import ExportPostRequestBody
from msgraph_beta.generated.models.attribute_set import AttributeSet
from msgraph_beta.generated.models.billing_period import BillingPeriod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportPostRequestBody(
	currency_code = "USD",
	attribute_set = AttributeSet.Full,
	billing_period = BillingPeriod.Current,
)

result = await graph_client.reports.partners.billing.usage.unbilled.microsoft_graph_partners_billing_export.post(request_body)


```