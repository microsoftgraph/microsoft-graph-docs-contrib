---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.threat_submission.url_threats.by_url_threat_submission_id('urlThreatSubmission-id').get()


```