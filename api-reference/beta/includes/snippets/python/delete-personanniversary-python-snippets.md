---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.profile.anniversaries.by_person_annual_event_id('personAnnualEvent-id').delete()


```