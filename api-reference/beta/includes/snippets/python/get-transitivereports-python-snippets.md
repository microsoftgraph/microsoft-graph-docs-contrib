---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.contacts.by_org_contact_id('orgContact-id').transitive_reports.count.get()


```