---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.sites.by_site_id('site-id').term_store.sets.by_set_id('set-id').children.get()


```