---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.reports.application_sign_in_detailed_summary.by_application_sign_in_detailed_summary_id('applicationSignInDetailedSummary-id').get()


```