---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.threat_intelligence.intelligence_profile_indicators.by_intelligence_profile_indicator_id('intelligenceProfileIndicator-id').get()


```