---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.admin.windows.updates.products.by_product_id('product-id').microsoft_graph_windows_updates_get_known_issues_by_time_range_with_days_in_past(1).get()


```