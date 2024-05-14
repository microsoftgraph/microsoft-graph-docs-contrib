---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.security.labels.categories.by_category_template_id('categoryTemplate-id').subcategories.by_subcategory_template_id('subcategoryTemplate-id').delete()


```