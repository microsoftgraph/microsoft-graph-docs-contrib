---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.directory.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.by_scoped_role_membership_id('scopedRoleMembership-id').get()


```