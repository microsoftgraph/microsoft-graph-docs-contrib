---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.outlook.master_categories.by_outlook_category_id('outlookCategory-id').get()


```