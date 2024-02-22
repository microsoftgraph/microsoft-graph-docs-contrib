---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.onenote.notebooks.get_recent_notebooks_with_include_personal_notebooks(False).get()


```