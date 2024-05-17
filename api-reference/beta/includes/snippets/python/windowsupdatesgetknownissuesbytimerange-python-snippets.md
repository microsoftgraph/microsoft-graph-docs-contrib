---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.windows.updates.products.by_product_id('product-id').microsoft_graph_windows_updates_get_known_issues_by_time_range_with_days_in_past(1).get()


```