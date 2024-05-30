---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.browser_site_list import BrowserSiteList

graph_client = GraphServiceClient(credentials, scopes)

request_body = BrowserSiteList(
	display_name = "Production Site List A",
	description = "Production site list for team A",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.post(request_body)


```