---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.threat_intelligence.host_cookies.by_host_cookie_id('hostCookie-id').get()


```