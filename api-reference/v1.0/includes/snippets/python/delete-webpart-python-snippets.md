---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.sites.by_site_id('site-id').pages.by_base_site_page_id('baseSitePage-id').graph_site_page.web_parts.by_web_part_id('webPart-id').delete()


```