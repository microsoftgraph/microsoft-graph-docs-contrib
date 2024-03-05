---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.get()


```