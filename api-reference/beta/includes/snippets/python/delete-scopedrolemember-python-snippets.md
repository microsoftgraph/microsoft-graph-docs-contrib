---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.by_scoped_role_membership_id('scopedRoleMembership-id').delete()


```