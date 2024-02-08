---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.profile.patents.by_item_patent_id('itemPatent-id').get()


```