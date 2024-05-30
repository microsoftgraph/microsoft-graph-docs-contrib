---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.edge.internetexplorermode.sitelists.item.publish.publish_post_request_body import PublishPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = PublishPostRequestBody(
	revision = "1.0",
)

result = await graph_client.admin.edge.internet_explorer_mode.site_lists.by_browser_site_list_id('browserSiteList-id').publish.post(request_body)


```