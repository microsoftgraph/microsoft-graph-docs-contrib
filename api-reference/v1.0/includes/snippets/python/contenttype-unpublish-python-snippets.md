---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').unpublish.post()


```