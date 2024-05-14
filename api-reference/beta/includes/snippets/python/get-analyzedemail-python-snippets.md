---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.collaboration.analyzed_emails.by_analyzed_email_id('analyzedEmail-id').get()


```