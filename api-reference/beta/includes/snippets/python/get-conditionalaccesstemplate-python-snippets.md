---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity.conditional_access.templates.by_conditional_access_template_id('conditionalAccessTemplate-id').get()


```